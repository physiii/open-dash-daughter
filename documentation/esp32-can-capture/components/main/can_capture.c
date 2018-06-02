#include "freertos/FreeRTOS.h"
#include "esp_system.h"
#include "esp_event.h"
#include "esp_event_loop.h"
#include "esp_log.h"
#include "driver/gpio.h"
#include "rom/uart.h"
#include "cJSON.h"

#include "CAN.h"

// if the dash does not respond, assume it is off
#define DASH_RESPONSE_TIMEOUT_MS    (2000)

#define MASTER_LOOP_PERIOD_MS       (100)

#define GPIO_STATUS_LED             (GPIO_NUM_2)
#define GPIO_CAN_RX                 (GPIO_NUM_4)
#define GPIO_MAINBOARD_SOFT_POWER   (GPIO_NUM_5)
#define GPIO_DISPLAY_POWER          (GPIO_NUM_17)
#define GPIO_AUDIO_AMP_POWER        (GPIO_NUM_19)
#define GPIO_MAINBOARD_POWER        (GPIO_NUM_21)

static const char * TAG = "DashDaughter";

enum eMasterState {
  MasterStarted,
  MasterQueryingDash,
  MasterForwardingCAN,
} MasterState = MasterStarted;

enum eIgnitionState {
  IgnitionOff,
  // IgnitionAccessory,
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

// keep these in sync with eDashState
static const char * eDashStateString[] = {
  "Off",
  "On",
  "Updating",

  // tail
  0
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

esp_err_t event_handler(void *ctx, system_event_t *event)
{
  // printf("event: %s\n", fmt_event_id(event->event_id));
  return ESP_OK;
}

/***
TODO: the documentation discourages use of this method

read a string from the serial port, until newline (either '\r' or '\n'), outsize, or timeout

Parameters:
out is where to store the characters
outsize is the maximum number of characters to read. callers should leave space for a terminal null.
xTickDelay is how long to sleep after each character to avoid busy looping
xTicksTimeout is how soon we should quit if we did not reach outsize characters, reset after each character.

Return value: number of characters stored (excluding terminal null).

This is blocking and as such is meant to be used from a separate task.
***/
size_t read_uart_string(char * out, size_t outsize, int xTickDelay, int xTicksTimeout) {
  char * outp = out;
  unsigned char in;
  clock_t xTimeout = xTaskGetTickCount() + xTicksTimeout;

  while (xTaskGetTickCount() < xTimeout && 0 < outsize) {
    if (OK == uart_rx_one_char(&in)) {
      if ('\r' == in || '\n' == in) {
        break;
      } else {
        *outp ++ = in;
        outsize -= 1;
        xTimeout = xTaskGetTickCount() + xTicksTimeout;
      }
    }
    vTaskDelay(xTickDelay);
  }

  *outp = 0;

  return outp - out;
}

/***
given some serial input, parse and take action
***/
void interpret_JSON_message(char * msg) {
  cJSON * root = cJSON_Parse(msg);
  if (root) {
    cJSON * status = cJSON_GetObjectItem(root, "status");
    if (status) {
      if (cJSON_True == status->type) {
        DashState = DashOn;
      } else {
        ESP_LOGW(TAG, "status wrong type/value in '%s': %02x", msg, status->type);
      }
    } else {
      ESP_LOGW(TAG, "status key missing from JSON response '%s'", msg);
    }
    cJSON_Delete(root);
  } else {
    ESP_LOGW(TAG, "failed to parse JSON response '%s'", msg);
  }
}

/***
monitor the serial port for messages from the dash, post them to the master message queue
***/
void task_DashSerial(void *pvParameters) {
  char dash_input[100];
  while (1) {
    if (0 < read_uart_string(dash_input, sizeof(dash_input), 25 / portTICK_PERIOD_MS, 2000 / portTICK_PERIOD_MS)) {
      interpret_JSON_message(dash_input);
    }
  }
}

/***
receive messages from the dash and CAN via queue
maintain local dash power state variable
toggle dash power state or send JSON-wrapped CAN messages
***/
void task_Master(void *pvParameters) {
    struct sInternalMessage msg;
    clock_t dash_power_query_timeout;

    while (1) {
      if (pdTRUE == xQueueReceive(internal_queue, &msg, MASTER_LOOP_PERIOD_MS / portTICK_PERIOD_MS)) {
        switch (msg.InternalMessage) {
          case InternalMessageDash:
            switch (msg.DashState) {
              case DashOn:
                reset_dash_timeout();
                break;
            }
            break;

          case InternalMessageIgnition:
            switch (msg.IgnitionState) {
              case IgnitionOff:
                turn_dash_off();
                break;

              case IgnitionEngine:
                turn_dash_on();
                break;
            }
            break;
        }
      }
    }
}

/***
return this frame's IgnitionStatus value, or IgnitionInvalid if it is not an ignition frame
***/
enum eIgnitionState check_ignition_status(const CAN_frame_t * frame) {
  // TODO: adapt Andy's ignition code
  return IgnitionInvalid;
}

/***
wrap this in JSON and send to dash via serial link
***/
void forward_frame(const CAN_frame_t * frame) {
  // TODO
}

// from <http://www.barth-dev.de/can-driver-esp32/> and
// <http://www.barth-dev.de/wp-content/uploads/2017/01/ESP32_CAN_demo.zip>
// as accessed 2018-04-26

/***
receive CAN bus messages
let ignition on/off messages update car power state
if dash power state is on then transmit (printf) JSON-wrapped copies of non-ignition messages
***/
void task_CAN( void *pvParameters ){
    (void)pvParameters;

    //frame buffer
    CAN_frame_t __RX_frame;

    //create CAN RX Queue
    CAN_cfg.rx_queue = xQueueCreate(10,sizeof(CAN_frame_t));
    CAN_cfg.rx_pin_id = GPIO_CAN_RX;
    CAN_cfg.speed = 50;

    //start CAN Module
    int ret;
    if (0 != (ret = CAN_init())) {
      printf("CAN_init failed with %d\n", ret);
      vTaskDelay(1500 / portTICK_PERIOD_MS);
      esp_restart();
    }

    struct sInternalMessage msg = { InternalMessageIgnition, {0} };

    printf("Entering CAN loop\n");
    bool was_started = false;
    bool engine_started = false;
    unsigned long ctr = 0;
    while (1){
        //receive next CAN frame from queue
        if(xQueueReceive(CAN_cfg.rx_queue,&__RX_frame, 3*portTICK_PERIOD_MS)==pdTRUE){

          msg.IgnitionState = check_ignition_status(&__RX_frame);

          if (IgnitionInvalid != msg.IgnitionState) {
            // TODO how long should we wait if at all?
            xQueueSend(internal_queue, &msg, 100 / portTICK_PERIOD_MS);
          }

          // unconditionally forward all frames
          forward_frame(&__RX_frame);

        	//do stuff!
        	if(__RX_frame.FIR.B.FF==CAN_frame_std)
        		printf("%lu\t%lu\tNew standard frame", ctr, clock());
        	/*else
        		printf("%lu\t%lu\tNew extended frame", ctr, clock());*/

        	if(__RX_frame.FIR.B.RTR==CAN_RTR)
        		printf(" RTR from 0x%08x, DLC %d\r\n",__RX_frame.MsgID,  __RX_frame.FIR.B.DLC);
        	else {
			uint64_t message_data = (uint64_t) __RX_frame.data.u32[1] << 32 | __RX_frame.data.u32[0];

        		//printf(" from 0x%08x, DLC %d, dataL: 0x%08x, dataH: 0x%08x \r\n",__RX_frame.MsgID,  __RX_frame.FIR.B.DLC, __RX_frame.data.u32[0],__RX_frame.data.u32[1]);

			if(__RX_frame.MsgID==0x6214000) {
				//printf("%08x %llx\n", __RX_frame.MsgID, message_data);
				//printf(" from 0x%08x, DLC %d, dataL: 0x%08x, dataH: 0x%08x \r\n",__RX_frame.MsgID,  __RX_frame.FIR.B.DLC, __RX_frame.data.u32[0],__RX_frame.data.u32[1]);


			        //b3f0000480004 start, driver door closed
			        //b430000480404 start, driver door open
			        //b430000480c04 start, passenger door

			        //uint64_t message_data = 0xb430000480404;

			        uint64_t message_data_invariant = message_data | 0x0000f00000ffff0f;
			        uint64_t message_data_variant = message_data & 0x0000f00000ffff0f;


				printf("\nInvariant: %llx -> %llx", message_data, message_data_invariant);
				printf("\nVariant: %llx -> %llx\n", message_data, message_data_variant);

				printf("%08x %llx\n", __RX_frame.MsgID, message_data_invariant);

				if(message_data_invariant==0xbf00000ffff0f) {
					if (!was_started) continue;
					printf("\nKEY MOVED TO OFF POSITION!");
					gpio_set_level(GPIO_MAINBOARD_SOFT_POWER, 0);
					vTaskDelay(2000 / portTICK_PERIOD_MS);
					gpio_set_level(GPIO_MAINBOARD_SOFT_POWER, 1);
					was_started = false;
					engine_started = false;
          IgnitionState = IgnitionOff;
				}
				else if(message_data_invariant==0xbff0000ffff0f) {
					if (was_started) continue;

					printf("\nKEY MOVED TO RUN POSITION!");
				        gpio_set_level(GPIO_MAINBOARD_SOFT_POWER, 0);
				        vTaskDelay(2000 / portTICK_PERIOD_MS);
				        gpio_set_level(GPIO_MAINBOARD_SOFT_POWER, 1);
					was_started = true;
          IgnitionState = IgnitionEngine;
				}

				if(message_data==0xb440000400400) {
					if(engine_started) continue;
					printf("\nENGINE STARTED!");
					engine_started = true;
				}
			}
			/*if(__RX_frame.MsgID==0x6284000) {
				printf("\nMUTE from steering wheel! %lli", message_data);
			}
			if(__RX_frame.MsgID==0x6314018) {
				 printf("\ngear change! %lli", message_data);
			}*/
		}

        	//loop back frame
        	// CAN_write_frame(&__RX_frame);

          ctr += 1;
        }
    }
}

void app_main(void)
{
    ESP_ERROR_CHECK( esp_event_loop_init(event_handler, NULL) );

    gpio_set_level(GPIO_DISPLAY_POWER, 1); //display power
    gpio_set_level(GPIO_AUDIO_AMP_POWER, 1); //audio amp power
    gpio_set_level(GPIO_MAINBOARD_POWER, 1); //mainboard power
    //gpio_set_level(GPIO_NUM_5, 1); //mainboard softpower

    internal_queue = xQueueCreate(10, sizeof(struct sInternalMessage));

    xTaskCreate(&task_Master, "MASTER", 2048, NULL, 5, NULL);
    xTaskCreate(&task_CAN, "CAN", 2048, NULL, 5, NULL);
    xTaskCreate(&task_DashSerial, "MSG", 2048, NULL, 5, NULL);

    //b430000480404 start, driver door open
    //b430000480c04 start, passenger door

    //b430000480404 off, driver door open
    //b430000480c04 off, passenger door

    /*uint64_t message_data = 0xb430000480404;
    uint64_t message_data_invariant = message_data | 0x0000000000000f00;
    printf("\nInvariant: %llx -> %llx", message_data, message_data_invariant);

    uint64_t message_data_variant = message_data & 0x0000000000000f00;
    printf("\nVariant: %llx -> %llx\n", message_data, message_data_variant);*/

    while (1) {
        // blink the status light
        gpio_set_level(GPIO_STATUS_LED, 1);
        vTaskDelay(25 / portTICK_PERIOD_MS);
        gpio_set_level(GPIO_STATUS_LED, 0);
        vTaskDelay(2975 / portTICK_PERIOD_MS);

        /*
        count = read_uart_string(buf, sizeof(buf), 25 / portTICK_PERIOD_MS, 1500 / portTICK_PERIOD_MS);
        if (count > 0) {
          printf("read %d chars, last was %02x: '%s'\n", count, buf[count - 1], buf);
        } else {
          printf("no string\n");
        }
        */
    }
}

