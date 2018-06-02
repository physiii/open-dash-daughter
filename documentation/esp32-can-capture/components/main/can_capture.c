#include "freertos/FreeRTOS.h"
#include "esp_system.h"
#include "esp_event.h"
#include "esp_event_loop.h"
#include "esp_log.h"
#include "esp_timer.h"
#include "driver/gpio.h"
#include "rom/uart.h"
#include "cJSON.h"
#include "CAN.h"

#include <string.h>

// for debug purposes flash the LED instead of turning on dash power
// #define DASH_POWER_LED 1

static const char * TAG = "DashDaughter";

// if the dash does not respond, assume it is off
#define DASH_RESPONSE_TIMEOUT         (2000 / portTICK_PERIOD_MS)
// how long to snooze between characters to avoid busy looping
#define DASH_CHARACTER_DELAY          (25 / portTICK_PERIOD_MS)
// master loop queue timeout
#define MASTER_LOOP_PERIOD            (50 / portTICK_PERIOD_MS)
// how long to wait after powering up before checking status again?
#define DASH_POWERUP_DELAY            (10000 / portTICK_PERIOD_MS)

// GPIO assignments
#define GPIO_STATUS_LED               (GPIO_NUM_2)
#define GPIO_CAN_RX                   (GPIO_NUM_4)
// #define GPIO_CAN_TX                   (GPIO_NUM_???)
#define GPIO_MAINBOARD_SOFT_POWER     (GPIO_NUM_5)
#define GPIO_DISPLAY_POWER            (GPIO_NUM_17)
#define GPIO_AUDIO_AMP_POWER          (GPIO_NUM_19)
#define GPIO_MAINBOARD_POWER          (GPIO_NUM_21)

#define KEY_POSITION_MASK             0x0000f00000000f00
#define KEY_POSITION_OFF              0x0000100000000b00
#define KEY_POSITION_START            0x0000c00000000b00
#define KEY_POSITION_RUN              0x0000400000000b00

enum eMasterState {
  MasterStarted,
  MasterQueryingDash,
  MasterForwardingCAN,
} MasterState = MasterStarted;

enum eIgnitionState {
  IgnitionOff,
  IgnitionRun,
  IgnitionStart,
  IgnitionInvalid,
} IgnitionState = IgnitionInvalid;

// keep these in sync with eDashStateString
enum eDashState {
  DashTimedOut,
  DashOn,
  DashUpdating, // do not interrupt us

  // tail
  DashInvalid,
} DashState = DashInvalid;

// passed by CAN and DashSerial task to the Master task
struct sInternalMessage {
  enum {
    InternalMessageDash,
    InternalMessageIgnition,
  } InternalMessage;
  union {
    enum eDashState DashState;
    enum eIgnitionState IgnitionState;
  };
};

CAN_device_t CAN_cfg = {0};
QueueHandle_t master_queue = NULL;
QueueHandle_t power_queue = NULL;

void initialize_gpio() {
  gpio_set_direction(GPIO_STATUS_LED, GPIO_MODE_OUTPUT);
  gpio_set_direction(GPIO_MAINBOARD_SOFT_POWER, GPIO_MODE_OUTPUT);
  gpio_set_direction(GPIO_DISPLAY_POWER, GPIO_MODE_OUTPUT);
  gpio_set_direction(GPIO_AUDIO_AMP_POWER, GPIO_MODE_OUTPUT);
  gpio_set_direction(GPIO_MAINBOARD_POWER, GPIO_MODE_OUTPUT);
}

/***
apply power to peripherals
***/
void apply_dash_power() {
  gpio_set_level(GPIO_DISPLAY_POWER, 1); //display power
  gpio_set_level(GPIO_AUDIO_AMP_POWER, 1); //audio amp power
  gpio_set_level(GPIO_MAINBOARD_POWER, 1); //mainboard power
  // gpio_set_level(GPIO_MAINBOARD_SOFT_POWER, 1); //mainboard softpower
}

esp_err_t event_handler(void *ctx, system_event_t *event)
{
  // printf("event: %s\n", fmt_event_id(event->event_id));
  return ESP_OK;
}

/***
TODO: the documentation discourages uart_rx_one_char

read a string from the serial port, until newline (either '\r' or '\n'), outsize, or timeout

Parameters:
out is where to store the characters
outsize is the maximum number of characters to read. callers should leave space for a terminal null.
xTickDelay is how long to sleep after each character to avoid busy looping
xTicksTimeout is how soon we should quit if we did not reach outsize characters, reset after each character.

Return value: number of characters stored (excluding terminal null).

This is blocking and as such is meant to be used from a separate task.
***/
size_t read_uart_string(char * out, size_t outsize) {
  char * outp = out;
  unsigned char in;
  clock_t xTimeout = xTaskGetTickCount() + DASH_RESPONSE_TIMEOUT;

  while (xTaskGetTickCount() < xTimeout && 0 < outsize) {
    if (OK == uart_rx_one_char(&in)) {
      if ('\r' == in || '\n' == in) {
        break;
      } else {
        *outp ++ = in;
        outsize -= 1;
        xTimeout = xTaskGetTickCount() + DASH_RESPONSE_TIMEOUT;
      }
    }
    vTaskDelay(DASH_CHARACTER_DELAY);
  }

  *outp = 0;

  return outp - out;
}

/***
given a JSON string from the dash, populate an sInternalMessage
return non-zero if filled in (even invalid), zero if no message
primarily looking for:
{"type":"status","payload":{"power_state":true}}
***/
int interpret_JSON_message(char * json_string, struct sInternalMessage * msg) {
  cJSON * root = cJSON_Parse(json_string);
  if (root) {
    cJSON * type = cJSON_GetObjectItem(root, "type");
    if (type) {
      if (cJSON_String == type->type) {
        if (0 == strcmp("status", type->valuestring)) {
          cJSON * payload = cJSON_GetObjectItem(root, "payload");
          if (payload) {
            cJSON * power_state = cJSON_GetObjectItem(payload, "power_state");
            if (power_state) {
              if (cJSON_True == power_state->type) {
                if (msg) {
                  msg->InternalMessage = InternalMessageDash;
                  msg->DashState = DashOn;
                }
              } else {
                if (msg) {
                  msg->InternalMessage = InternalMessageDash;
                  msg->DashState = DashInvalid;
                }
              }
              cJSON_Delete(root);
              return 1;
            } else {
              // ESP_LOGW("json", "power_state key missing from payload of '%s'", json_string);
            }
          } else {
            // ESP_LOGW("json", "payload key missing from '%s'", json_string);
          }
        } else {
          // ESP_LOGW("json", "wrong type '%s' in '%s'", type->valuestring, json_string);
        }
      } else {
        // ESP_LOGW(TAG, "type wrong type in '%s': %02x", json_string, type->type);
      }
    } else {
      // ESP_LOGW("json", "type key missing from '%s'", json_string);
    }
    if (msg) {
      msg->InternalMessage = InternalMessageDash;
      msg->DashState = DashInvalid;
    }
    cJSON_Delete(root);
    return 1;
  } else {
    // ESP_LOGW(TAG, "failed to parse JSON response '%s'", json_string);
  }

  return 0;
}

// debug version
#ifdef DASH_POWER_LED
enum eDashState DEBUG_query_dash_power_state() {
  // ESP_LOGW("query", "space for on, anything else times out");
  unsigned char in;
  while (1) {
    if (OK == uart_rx_one_char(&in)) {
      if (0x20 == in) {
        return DashOn;
      } else {
        return DashTimedOut;
      }
    }
    vTaskDelay(100);
  }
}
#else // DASH_POWER_LED
/***
wait for one message from the serial port, or set DashTimedOut
***/
enum eDashState query_dash_power_state() {
  struct sInternalMessage msg;
  char dash_input[100];

  // dash must respond to this message
  printf("{\"type\":\"status\",\"payload\":{\"power_state\":true}}\n");

  // // ESP_LOGI(TAG, "task_DashSerialOneShot...");
  if (0 < read_uart_string(dash_input, sizeof(dash_input))) {
    if (interpret_JSON_message(dash_input, &msg)) {
      if (InternalMessageDash == msg.InternalMessage) {
        if (DashOn == msg.DashState) {
          // ESP_LOGI("query", "dash alive");
        } else {
          // ESP_LOGW("query", "unexpected message '%s'", dash_input);
        }
      } else {
        // ESP_LOGW("query", "unexpected message '%s'", dash_input);
      }
    } else {
      // ESP_LOGW("query", "could not parse JSON '%s'", dash_input);
    }

    // if we got anything back it should technically be on
    return DashOn;
  }

  return DashTimedOut;
}
#endif // DASH_POWER_LED

/***
"press the button" for two seconds
***/
void toggle_dash_power() {
#ifdef DASH_POWER_LED
  gpio_set_level(GPIO_STATUS_LED, 1);
  vTaskDelay(2000 / portTICK_PERIOD_MS);
  gpio_set_level(GPIO_STATUS_LED, 0);
#else
  gpio_set_level(GPIO_MAINBOARD_SOFT_POWER, 0);
  vTaskDelay(2000 / portTICK_PERIOD_MS);
  gpio_set_level(GPIO_MAINBOARD_SOFT_POWER, 1);
#endif // DASH_POWER_LED
}

/***
these two are the same for now, but could be different later
***/
void turn_dash_off() {
  // ESP_LOGI(TAG, "turning dash off");
  toggle_dash_power();
}

void turn_dash_on() {
  // // ESP_LOGI(TAG, "turning dash on");
  // ESP_LOGI("power", "turning dash on... (10s delay)");
  toggle_dash_power();
  vTaskDelay(DASH_POWERUP_DELAY);
  // ESP_LOGI("power", "powerup delay complete");
}

/***
holding down the light button takes 2 seconds so do it in a separate task
***/
void task_PowerState(void *pvParameters) {
  bool cur_state, new_state;
  while (1) {
    if (pdTRUE == xQueueReceive(power_queue, &new_state, MASTER_LOOP_PERIOD)) {
      DashState = query_dash_power_state();
      // ESP_LOGI("power", "DashState: %s", DashOn == DashState ? "On" : (DashTimedOut == DashState ? "TimedOut" : "Other"));
      cur_state = (DashOn == DashState);
      if (new_state != cur_state) {
        // ESP_LOGI("power", "changing state to %d", new_state);
        if (new_state) {
          // ESP_LOGI("power", "SWITCHING ON");
          turn_dash_on();
        } else {
          // ESP_LOGI("power", "SWITCHING OFF");
          turn_dash_off();
        }
      } else {
        // ESP_LOGI("power", "already %d, ignoring", cur_state);
      }
    }
  }
}

/***
receive messages from the dash and CAN via queue
maintain local dash power state variable
toggle dash power state
***/
void task_Master(void *pvParameters) {
  struct sInternalMessage msg;
  bool new_power_state;

  // // ESP_LOGI("master", "master task message loop");
  while (1) {
    if (pdTRUE == xQueueReceive(master_queue, &msg, MASTER_LOOP_PERIOD)) {
      // // ESP_LOGI("master", "received message");
      switch (msg.InternalMessage) {
        case InternalMessageIgnition:
          new_power_state = (IgnitionRun == msg.IgnitionState || IgnitionStart == msg.IgnitionState);
          if (pdTRUE != xQueueSend(power_queue, &new_power_state, 0)) {
            // ESP_LOGW("master", "power queue full sending %d", new_power_state);
          }
          break;

        case InternalMessageDash:
          DashState = msg.DashState;
          break;
      }
    }
  }
}

/***
return this frame's IgnitionStatus value, or IgnitionInvalid if it is not an ignition frame
***/
enum eIgnitionState check_ignition_status(const CAN_frame_t * frame) {
  if (CAN_RTR != frame->FIR.B.RTR) {
    switch (frame->MsgID) {
      case 0x6214000:
        // // ESP_LOGI("canbus", "data %d %016llx", frame->FIR.B.DLC, frame->data.u64);
        // printf("data %016llx\n", frame->data.u64);
        switch (frame->data.u64 & KEY_POSITION_MASK) {
          case KEY_POSITION_OFF: return IgnitionOff;
          case KEY_POSITION_RUN: return IgnitionRun;
          case KEY_POSITION_START: return IgnitionStart;
        }
        break;
      case 0x6284000: break; // mute from steering wheel
      case 0x6314018: break; // gear change
      case 0xc214003: // clock, DLC=6 ignore the last 2 bytes
        // 2353210120170000 // Jan 21, 2017, 23:53
        // HHMMddmmYYyy
        break;
    }
  }
  return IgnitionInvalid;
}

/***
wrap this in JSON and send to dash via serial link
***/
void forward_frame(const CAN_frame_t * frame, const unsigned int ctr) {
#ifdef DASH_POWER_LED
  // printf(".");
#else
  int64_t ticks = esp_timer_get_time();
  printf("{\"ctr\":%u,\"ticks\":{\"l32\":%u,\"h32\":%u},\"CAN\":{\"RTR\":%d,\"MsgID\":%d,\"DLC\":%d,\"data\":{\"l32\":%u,\"h32\":%u}}}\n",
      ctr, (uint32_t)(ticks & 0xffffffff), (uint32_t)((ticks >> 32) & 0xffffffff),
      frame->FIR.B.RTR, frame->MsgID,
      frame->FIR.B.DLC, frame->data.u32[0], frame->data.u32[1]
      );
#endif // DASH_POWER_LED
}

/*
// reduce dynamic allocations with a fixed buffer
#define JSON_OUTPUT_BUFFER_SIZE       (200)
void forward_frame_JSON(const CAN_frame_t * frame, const unsigned int ctr) {
  char outbuf[JSON_OUTPUT_BUFFER_SIZE];
  cJSON * jwrapper, * jframe, * jticks, * jdata;
  int64_t ticks = esp_timer_get_time();
  jwrapper = cJSON_CreateObject();
  cJSON_AddNumberToObject(jwrapper, "ctr", ctr);
  cJSON_AddItemToObject(jwrapper, "ticks", (jticks = cJSON_CreateObject()));
  cJSON_AddNumberToObject(jticks, "l32", (uint32_t) (ticks & 0xffffffff));
  cJSON_AddNumberToObject(jticks, "h32", (uint32_t) ((ticks >> 32) & 0xffffffff));
  cJSON_AddItemToObject(jwrapper, "CAN", (jframe = cJSON_CreateObject()));
  cJSON_AddNumberToObject(jframe, "MsgID", frame->MsgID);
  cJSON_AddNumberToObject(jframe, "DLC", frame->FIR.B.DLC);
  cJSON_AddItemToObject(jframe, "data", (jdata = cJSON_CreateObject()));
  cJSON_AddNumberToObject(jdata, "l32", frame->data.u32[0]);
  cJSON_AddNumberToObject(jdata, "h32", frame->data.u32[1]);

  if (cJSON_PrintPreallocated(jwrapper, outbuf, sizeof(outbuf) - 5, 0)) {
    printf("%s\n", outbuf);
  } else {
    // UHOH
  }

  cJSON_Delete(jwrapper);
}
*/

// 64-bit endian reversal
// <https://stackoverflow.com/a/21507710> 2018-06-02
uint64_t swapLong(uint64_t x) {
    // uint64_t x = (uint64_t) X;
    x = (x & 0x00000000FFFFFFFF) << 32 | (x & 0xFFFFFFFF00000000) >> 32;
    x = (x & 0x0000FFFF0000FFFF) << 16 | (x & 0xFFFF0000FFFF0000) >> 16;
    x = (x & 0x00FF00FF00FF00FF) << 8  | (x & 0xFF00FF00FF00FF00) >> 8;
    return x;
}

/***
receive CAN bus messages
let ignition on/off messages update car power state
if dash power state is on then transmit (printf) JSON-wrapped copies of non-ignition messages

based on <http://www.barth-dev.de/can-driver-esp32/> and
<http://www.barth-dev.de/wp-content/uploads/2017/01/ESP32_CAN_demo.zip>
as accessed 2018-04-26
***/
void task_CAN (void *pvParameters) {
  //frame buffer
  CAN_frame_t __RX_frame;
  struct sInternalMessage msg = { InternalMessageIgnition, {0} };

  // configure CAN receiver
  CAN_cfg.rx_queue = xQueueCreate(10, sizeof(CAN_frame_t));
  CAN_cfg.rx_pin_id = GPIO_CAN_RX;
  CAN_cfg.speed = 50;

  //start CAN module
  {
    int ret;
    if (0 != (ret = CAN_init())) {
      // // ESP_LOGE(TAG, "!!! CAN_init failed with %d\n", ret);
      vTaskDelay(1500 / portTICK_PERIOD_MS);
      esp_restart();
    }
  }

  // // ESP_LOGI("canbus", "Entering CAN loop\n");
  for (unsigned long ctr = 0; ;) {
    if (pdTRUE == xQueueReceive(CAN_cfg.rx_queue,&__RX_frame, 3 * portTICK_PERIOD_MS)) {
      // // // ESP_LOGI(TAG, "received message %lu\n", ctr);

      __RX_frame.data.u64 = swapLong(__RX_frame.data.u64);

      msg.IgnitionState = check_ignition_status(&__RX_frame);

      if (IgnitionInvalid != msg.IgnitionState) {
        char * label;
        switch (msg.IgnitionState) {
          case IgnitionOff: label = "Off"; break;
          case IgnitionRun: label = "Run"; break;
          case IgnitionStart: label = "Start"; break;
          case IgnitionInvalid: label = "Invalid"; break;
          default: label = "wtf";
        }
        // ESP_LOGI("canbus", "sending %s", label);
        // TODO how long should we wait, if at all?
        // the messages come quickly but are repeated
        if (pdTRUE != xQueueSend(master_queue, &msg, 0)) {
          // ESP_LOGW("canbus", "queue full trying to send %s", label);
        }
      }

      if (1 || DashOn == DashState) {
        forward_frame(&__RX_frame, ctr);
      }

      ctr += 1;
    }
  }
}

void app_main(void) {
  ESP_ERROR_CHECK( esp_event_loop_init(event_handler, NULL) );

  initialize_gpio();
  apply_dash_power();

  master_queue = xQueueCreate(10, sizeof(struct sInternalMessage));
  power_queue = xQueueCreate(1, sizeof(bool));

  xTaskCreate(&task_Master, "MASTER", 2048, NULL, 5, NULL);
  xTaskCreate(&task_CAN, "CAN", 2048, NULL, 5, NULL);
  xTaskCreate(&task_PowerState, "POWER", 2048, NULL, 5, NULL);

  while (1) {
    // blink the status light
#ifndef DASH_POWER_LED
    gpio_set_level(GPIO_STATUS_LED, 1);
    vTaskDelay(25 / portTICK_PERIOD_MS);
    gpio_set_level(GPIO_STATUS_LED, 0);
    vTaskDelay(1475 / portTICK_PERIOD_MS);
#else
    vTaskDelay(1500 / portTICK_PERIOD_MS);
#endif // DASH_POWER_LED
  }
}

