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

static const char * TAG = "DashDaughter";

// if the dash does not respond, assume it is off
#define DASH_RESPONSE_TIMEOUT         (2000 / portTICK_PERIOD_MS)
// how long to snooze between characters to avoid busy looping
#define DASH_CHARACTER_DELAY          (25 / portTICK_PERIOD_MS)
// master loop queue timeout
#define MASTER_LOOP_PERIOD            (100 / portTICK_PERIOD_MS)

// GPIO assignments
#define GPIO_STATUS_LED               (GPIO_NUM_2)
#define GPIO_CAN_RX                   (GPIO_NUM_4)
// #define GPIO_CAN_TX                   (GPIO_NUM_???)
#define GPIO_MAINBOARD_SOFT_POWER     (GPIO_NUM_5)
#define GPIO_DISPLAY_POWER            (GPIO_NUM_17)
#define GPIO_AUDIO_AMP_POWER          (GPIO_NUM_19)
#define GPIO_MAINBOARD_POWER          (GPIO_NUM_21)

enum eMasterState {
  MasterStarted,
  MasterQueryingDash,
  MasterForwardingCAN,
} MasterState = MasterStarted;

enum eIgnitionState {
  IgnitionOff,
  IgnitionAccessory,
  IgnitionEngine,
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
QueueHandle_t internal_queue = NULL;

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
***/
int interpret_JSON_message(char * json_string, struct sInternalMessage * msg) {
  cJSON * root = cJSON_Parse(json_string);
  if (root) {
    cJSON * status = cJSON_GetObjectItem(root, "status");
    if (status) {
      if (cJSON_True == status->type) {
        if (msg) {
          msg->InternalMessage = InternalMessageDash;
          msg->DashState = DashOn;
        }
      } else {
        ESP_LOGW(TAG, "status wrong type/value in '%s': %02x", json_string, status->type);
        if (msg) {
          msg->InternalMessage = InternalMessageDash;
          msg->DashState = DashInvalid;
        }
      }
    } else {
      ESP_LOGW(TAG, "status key missing from JSON response '%s'", json_string);
      if (msg) {
        msg->InternalMessage = InternalMessageDash;
        msg->DashState = DashInvalid;
      }
    }
    cJSON_Delete(root);
    return 1;
  } else {
    ESP_LOGW(TAG, "failed to parse JSON response '%s'", json_string);
  }

  return 0;
}

/***
wait for one message from the serial port, or set DashTimedOut
***/
void task_DashSerialOneShot(void *pvParameters) {
  struct sInternalMessage msg;
  char dash_input[100];

  ESP_LOGI(TAG, "task_DashSerialOneShot...");
  if (0 < read_uart_string(dash_input, sizeof(dash_input))) {
    if (interpret_JSON_message(dash_input, &msg)) {
      if (InternalMessageDash == msg.InternalMessage) {
        if (DashOn == msg.DashState) {
          DashState = DashOn;
        } else {
          // invalid or dash off
        }
      } else {
        // uh-oh
      }
    }
  } else {
    DashState = DashTimedOut;
  }

  ESP_LOGI(TAG, "task_DashSerialOneShot result: %d", DashState);

  // we have done our job
  vTaskDelete(NULL);
}

/***
"press the button" for two seconds
***/
void toggle_dash_power() {
  gpio_set_level(GPIO_MAINBOARD_SOFT_POWER, 0);
  vTaskDelay(2000 / portTICK_PERIOD_MS);
  gpio_set_level(GPIO_MAINBOARD_SOFT_POWER, 1);
}

/***
these two are the same for now, but could be different later
***/
void turn_dash_off() {
  toggle_dash_power();
}

void turn_dash_on() {
  toggle_dash_power();
}

/***
receive messages from the dash and CAN via queue
maintain local dash power state variable
toggle dash power state
***/
void task_Master(void *pvParameters) {
  struct sInternalMessage msg;

  // determine the initial state of the dash, blocks for upto 2 seconds
  // but can frames are still forwarding in a separate task
  task_DashSerialOneShot(NULL);

  while (1) {
    if (pdTRUE == xQueueReceive(internal_queue, &msg, MASTER_LOOP_PERIOD)) {
      switch (msg.InternalMessage) {
        case InternalMessageIgnition:
          switch (msg.IgnitionState) {
            case IgnitionOff:
              if (DashOn == DashState) {
                turn_dash_off();
              } else {
                ESP_LOGI(TAG, "dash not on");
              }
              break;

            case IgnitionAccessory:
            case IgnitionEngine:
              if (DashOn != DashState) {
                turn_dash_on();
              } else {
                ESP_LOGI(TAG, "dash already on");
              }
              break;

            default:
              // who sent this?
              break;
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
        switch (frame->data.u64 | 0x0000f00000ffff0f) {
          case 0xbf00000ffff0f: return IgnitionOff;
          case 0xbff0000ffff0f: return IgnitionAccessory;
          case 0xb440000400400: return IgnitionEngine;
        }
        break;
      case 0x6284000: break; // mute from steering wheel
      case 0x6314018: break; // gear change
    }
  }
  return IgnitionInvalid;
}

/***
wrap this in JSON and send to dash via serial link
***/
void forward_frame(const CAN_frame_t * frame, const unsigned int ctr) {
  int64_t ticks = esp_timer_get_time();
  printf("{\"ctr\":%u,\"ticks\":{\"l32\":%u,\"h32\":%u},\"CAN\":{\"RTR\":%d,\"MsgID\":%d,\"DLC\":%d,\"data\":{\"l32\":%u,\"h32\":%u}}}\n",
      ctr, (uint32_t)(ticks & 0xffffffff), (uint32_t)((ticks >> 32) & 0xffffffff),
      frame->FIR.B.RTR, frame->MsgID,
      frame->FIR.B.DLC, frame->data.u32[0], frame->data.u32[1]
      );
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
      ESP_LOGE(TAG, "!!! CAN_init failed with %d\n", ret);
      vTaskDelay(1500 / portTICK_PERIOD_MS);
      esp_restart();
    }
  }

  ESP_LOGI(TAG, "Entering CAN loop\n");
  for (unsigned long ctr = 0; ;) {
    if (pdTRUE == xQueueReceive(CAN_cfg.rx_queue,&__RX_frame, 3 * portTICK_PERIOD_MS)) {
      ESP_LOGI(TAG, "received message %lu\n", ctr);

      msg.IgnitionState = check_ignition_status(&__RX_frame);

      if (IgnitionInvalid != msg.IgnitionState) {
        // TODO how long should we wait, if at all?
        // the messages come quickly but are repeated
        xQueueSend(internal_queue, &msg, 0);
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

  internal_queue = xQueueCreate(10, sizeof(struct sInternalMessage));

  // xTaskCreate(&task_Master, "MASTER", 2048, NULL, 5, NULL);
  xTaskCreate(&task_CAN, "CAN", 2048, NULL, 5, NULL);

  while (1) {
    // blink the status light
    gpio_set_level(GPIO_STATUS_LED, 1);
    vTaskDelay(25 / portTICK_PERIOD_MS);
    gpio_set_level(GPIO_STATUS_LED, 0);
    vTaskDelay(1475 / portTICK_PERIOD_MS);
  }
}

