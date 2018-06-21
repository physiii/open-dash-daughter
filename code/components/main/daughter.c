#ifdef _DEBUG
// _DEBUG blinks status LED and prints all frames
#define LOG_LOCAL_LEVEL ESP_LOG_VERBOSE
#endif // _DEBUG
#ifdef _VERBOSE
#define LOG_LOCAL_LEVEL ESP_LOG_VERBOSE
#endif // _VERBOSE

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
#include "driver/i2c.h"
#include <string.h>

// if the dash does not respond, assume it is off
#define DASH_RESPONSE_TIMEOUT         (2000 / portTICK_PERIOD_MS)
// how long to snooze between characters to avoid busy looping
#define DASH_CHARACTER_DELAY          (25 / portTICK_PERIOD_MS)
// master loop queue timeout
#define MASTER_LOOP_PERIOD            (50 / portTICK_PERIOD_MS)
// how long to wait after toggling power before checking status again?
#define DASH_POWERUP_WAIT             (10 * 1000 / portTICK_PERIOD_MS)
#define DASH_POWERDOWN_WAIT           (10 * 1000 / portTICK_PERIOD_MS)

// GPIO assignments
#define GPIO_STATUS_LED               (GPIO_NUM_2)
#define GPIO_CAN_RX                   (GPIO_NUM_4)
// #define GPIO_CAN_TX                   (GPIO_NUM_???)
#define GPIO_MAINBOARD_SOFT_POWER     (GPIO_NUM_5)
#define GPIO_DISPLAY_POWER            (GPIO_NUM_15)
#define GPIO_AUDIO_AMP_POWER          (GPIO_NUM_16)
#define GPIO_MAINBOARD_POWER          (GPIO_NUM_18)

#define KEY_POSITION_MASK             0x0000f00000000f00
#define KEY_POSITION_OFF              0x0000100000000b00
#define KEY_POSITION_START            0x0000c00000000b00
#define KEY_POSITION_RUN              0x0000400000000b00

TaskHandle_t xBlink = NULL;
bool dash_wait_flag = false;

/************************** power detection ********************************/

#define DATA_LENGTH                        512              /*!<Data buffer length for test buffer*/
#define RW_TEST_LENGTH                     129              /*!<Data length for r/w test, any value from 0-DATA_LENGTH*/
#define MAINBOARD_ON_CURRENT		   100		

#define I2C_EXAMPLE_MASTER_SCL_IO          21               /*!< gpio number for I2C master clock */
#define I2C_EXAMPLE_MASTER_SDA_IO          19               /*!< gpio number for I2C master data  */
#define I2C_EXAMPLE_MASTER_NUM             I2C_NUM_1        /*!< I2C port number for master dev */
#define I2C_EXAMPLE_MASTER_TX_BUF_DISABLE  0                /*!< I2C master do not need buffer */
#define I2C_EXAMPLE_MASTER_RX_BUF_DISABLE  0                /*!< I2C master do not need buffer */
#define I2C_EXAMPLE_MASTER_FREQ_HZ         100000           /*!< I2C master clock frequency */

#define WRITE_BIT                          I2C_MASTER_WRITE /*!< I2C master write */
#define READ_BIT                           I2C_MASTER_READ  /*!< I2C master read */
#define ACK_CHECK_EN                       0x1              /*!< I2C master will check ack from slave*/
#define ACK_CHECK_DIS                      0x0              /*!< I2C master will not check ack from slave */
#define ACK_VAL                            0x0              /*!< I2C ack value */
#define NACK_VAL                           0x1              /*!< I2C nack value */

// GPIO assignments
#define GPIO_STATUS_LED               (GPIO_NUM_2)
#define GPIO_CAN_RX                   (GPIO_NUM_4)
// #define GPIO_CAN_TX                   (GPIO_NUM_???)
#define GPIO_MAINBOARD_SOFT_POWER     (GPIO_NUM_5)
#define GPIO_DISPLAY_POWER            (GPIO_NUM_15)
#define GPIO_AUDIO_AMP_POWER          (GPIO_NUM_16)
#define GPIO_MAINBOARD_POWER          (GPIO_NUM_18)

#define POWER_DELAY_TIME   1234 /*!< delay time between different test items */

#define INA219_SENSOR_ADDR            0x41    /*!< slave address for SI7020 sensor */
#define INA219_CMD_CONFIGURE          0x00    /*!< Command to set measure mode */
#define INA219_CONFIGURATION_MSB      0x11    /*!< Command to set measure mode */
#define INA219_CONFIGURATION_LSB      0x9F    /*!< Command to set measure mode */
#define INA219_CMD_MEASURE_CURRENT    0x01    /*!< Command to set measure mode */
#define INA219_CMD_MEASURE_VOLTAGE    0x02    /*!< Command to set measure mode */
#define INA219_CMD_MEASURE_POWER      0x03    /*!< Command to set measure mode */

char temp_str[50];
bool power_received = false;
uint8_t mac[6];
char power_rx_data[256];
char power_command[100];

char current_str[100] = "0";
char voltage_str[100] = "0";

bool power_data_ready = false;

char power_command[100];
char front_power_str[100];
char i_str[10];
int power_linked = 0;
//bool power_connected = false;

char power_str[250] = "";
static bool s_pad_activated[TOUCH_PAD_MAX];
static bool s_pad_activated_notify[TOUCH_PAD_MAX];
static bool s_pad_activated_USB_POWER_PIN[TOUCH_PAD_MAX];
char power_req_str[1024];

uint32_t low_battery_off = 0 * 1000;
uint32_t low_battery_on = 0 * 1000;
uint32_t high_battery_off = 20 * 1000;
uint32_t high_battery_on =  20 * 1000;
uint32_t battery_power = 0;

uint32_t current_cf = 1000;
uint32_t current_cb = 0;
uint32_t voltage_cf =  1000;
uint32_t voltage_cb = 0;
uint32_t power_cf =  1000;
uint32_t power_cb = 0;


char temp_str[50];
char mac_str[20];
char power[512];
char power_message[512];
char previous_power[256];
char battery_power_str[50];
char usb_state[10];


bool low_battery = false;
bool power_req_sent = false;
bool power_connect = true;
//bool power_connecting = false;
bool INA219_CONFIGURED = false;
uint8_t mac[6];

int battery_voltage = 0;
int battery_current = 0;
int usb_power_value = 0;
int panel_en_value = 0;

/**
 * @brief i2c master initialization
 */
static void i2c_example_master_init()
{
    int i2c_master_port = I2C_EXAMPLE_MASTER_NUM;
    i2c_config_t conf;
    conf.mode = I2C_MODE_MASTER;
    conf.sda_io_num = I2C_EXAMPLE_MASTER_SDA_IO;
    conf.sda_pullup_en = GPIO_PULLUP_ENABLE;
    conf.scl_io_num = I2C_EXAMPLE_MASTER_SCL_IO;
    conf.scl_pullup_en = GPIO_PULLUP_ENABLE;
    conf.master.clk_speed = I2C_EXAMPLE_MASTER_FREQ_HZ;
    i2c_param_config(i2c_master_port, &conf);
    i2c_driver_install(i2c_master_port, conf.mode,
                       I2C_EXAMPLE_MASTER_RX_BUF_DISABLE,
                       I2C_EXAMPLE_MASTER_TX_BUF_DISABLE, 0);
}


static esp_err_t INA219_configure(i2c_port_t i2c_num, uint8_t* data_msb, uint8_t* data_lsb, size_t size)
{
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);

    i2c_master_write_byte(cmd, ( INA219_SENSOR_ADDR << 1 ) | WRITE_BIT, ACK_CHECK_EN);
    i2c_master_write_byte(cmd, INA219_CMD_CONFIGURE, ACK_CHECK_EN);
    i2c_master_write_byte(cmd, INA219_CONFIGURATION_MSB, ACK_CHECK_EN);
    i2c_master_write_byte(cmd, INA219_CONFIGURATION_LSB, ACK_CHECK_EN);
    /*i2c_master_write(cmd, data_msb, size, ACK_CHECK_EN);
    i2c_master_write(cmd, data_lsb, size, ACK_CHECK_EN);*/

    i2c_master_stop(cmd);
    esp_err_t ret = i2c_master_cmd_begin(i2c_num, cmd, 1000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);
    return ESP_OK;
}

static esp_err_t INA219_measure_current(i2c_port_t i2c_num, uint8_t* data_h, uint8_t* data_l)
{
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, INA219_SENSOR_ADDR << 1 | WRITE_BIT, ACK_CHECK_EN);
    i2c_master_write_byte(cmd, INA219_CMD_MEASURE_CURRENT, ACK_CHECK_EN);
    i2c_master_stop(cmd);

    int ret = i2c_master_cmd_begin(i2c_num, cmd, 1000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);
    if (ret == ESP_FAIL) {
        return ret;
    }

    vTaskDelay(30 / portTICK_RATE_MS);

    cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, INA219_SENSOR_ADDR << 1 | READ_BIT, ACK_CHECK_EN);
    i2c_master_read_byte(cmd, data_h, ACK_VAL);
    i2c_master_read_byte(cmd, data_l, NACK_VAL);
    i2c_master_stop(cmd);

    ret = i2c_master_cmd_begin(i2c_num, cmd, 1000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);
    if (ret == ESP_FAIL) {
        return ESP_FAIL;
    }
    return ESP_OK;
}

static esp_err_t INA219_measure_voltage(i2c_port_t i2c_num, uint8_t* data_h, uint8_t* data_l)
{
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, INA219_SENSOR_ADDR << 1 | WRITE_BIT, ACK_CHECK_EN);
    i2c_master_write_byte(cmd, INA219_CMD_MEASURE_VOLTAGE, ACK_CHECK_EN);
    i2c_master_stop(cmd);

    int ret = i2c_master_cmd_begin(i2c_num, cmd, 1000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);
    if (ret == ESP_FAIL) {
        return ret;
    }

    vTaskDelay(30 / portTICK_RATE_MS);

    cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, INA219_SENSOR_ADDR << 1 | READ_BIT, ACK_CHECK_EN);
    i2c_master_read_byte(cmd, data_h, ACK_VAL);
    i2c_master_read_byte(cmd, data_l, NACK_VAL);
    i2c_master_stop(cmd);

    ret = i2c_master_cmd_begin(i2c_num, cmd, 1000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);
    if (ret == ESP_FAIL) {
        return ESP_FAIL;
    }
    return ESP_OK;
}

static esp_err_t INA219_measure_power(i2c_port_t i2c_num, uint8_t* data_h, uint8_t* data_l)
{
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, INA219_SENSOR_ADDR << 1 | WRITE_BIT, ACK_CHECK_EN);
    i2c_master_write_byte(cmd, INA219_CMD_MEASURE_POWER, ACK_CHECK_EN);
    i2c_master_stop(cmd);

    int ret = i2c_master_cmd_begin(i2c_num, cmd, 1000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);
    if (ret == ESP_FAIL) {
        return ret;
    }

    vTaskDelay(100 / portTICK_RATE_MS);

    cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, INA219_SENSOR_ADDR << 1 | READ_BIT, ACK_CHECK_EN);
    i2c_master_read_byte(cmd, data_h, ACK_VAL);
    i2c_master_read_byte(cmd, data_l, NACK_VAL);
    i2c_master_stop(cmd);

    ret = i2c_master_cmd_begin(i2c_num, cmd, 1000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);
    if (ret == ESP_FAIL) {
        return ESP_FAIL;
    }
    return ESP_OK;
}

static void power_task(void* arg)
{
    char tag[20] = "[climate-protocol]";
    int i = 0;
    int ret;
    uint32_t task_idx = (uint32_t) arg;
    uint8_t* data = (uint8_t*) malloc(DATA_LENGTH);
    uint8_t* data_wr = (uint8_t*) malloc(DATA_LENGTH);
    uint8_t* data_rd = (uint8_t*) malloc(DATA_LENGTH);
    uint8_t sensor_data_h, sensor_data_l;

    uint8_t* data_msb = (uint8_t*) INA219_CONFIGURATION_MSB;
    uint8_t* data_lsb = (uint8_t*) INA219_CONFIGURATION_LSB;
    
    /*low_battery_on = get_u32("low_battery_on",low_battery_on);
    low_battery_off = get_u32("low_battery_off",low_battery_off);
    high_battery_on = get_u32("high_battery_on",high_battery_on);
    high_battery_off = get_u32("high_battery_off",high_battery_off);

    voltage_cf = get_u32("voltage_cf",voltage_cf);
    voltage_cb = get_u32("voltage_cb",voltage_cb);
    current_cf = get_u32("current_cf",current_cf);
    current_cb = get_u32("current_cb",current_cb);*/

    while (1) {

        //--------------------------------------------------//
	if (!INA219_CONFIGURED) {
		ret = INA219_configure( I2C_EXAMPLE_MASTER_NUM, data_msb, data_lsb, RW_TEST_LENGTH);
        	if (ret == ESP_OK) {
        	    printf("INA219 configured\n");
		    INA219_CONFIGURED = true;
	        } else {
        	    printf("INA219_CONFIGURED No ack, sensor not connected\n");
	        }
	        vTaskDelay(( POWER_DELAY_TIME * ( task_idx + 1 ) ) / portTICK_RATE_MS);
	}

        //--------------------------------------------------//
	ret = INA219_measure_current( I2C_EXAMPLE_MASTER_NUM, &sensor_data_h, &sensor_data_l);
        if (ret == ESP_OK) {
            //printf("data_h: %02x\n", sensor_data_h);
            //printf("data_l: %02x\n", sensor_data_l);
            //printf("sensor val: %f\n", ( sensor_data_h << 8 | sensor_data_l ) / 1.2);
            printf("MEASURE CURRENT INA219 (%d)\n", ( sensor_data_h << 8 | sensor_data_l ));
	    battery_current = ( sensor_data_h << 8 | sensor_data_l ) * current_cf / 1000 - current_cb;
            sprintf(current_str,"%d", battery_current);
	    //power_data_ready = true;
        } else {
            printf("INA219_measure_current No ack, sensor not connected\n");
        }
        vTaskDelay(( POWER_DELAY_TIME * ( task_idx + 1 ) ) / portTICK_RATE_MS);

        //--------------------------------------------------//
        ret = INA219_measure_voltage( I2C_EXAMPLE_MASTER_NUM, &sensor_data_h, &sensor_data_l);
        if (ret == ESP_OK) {
	   battery_voltage = ( sensor_data_h << 8 | sensor_data_l );
	   battery_voltage = battery_voltage * voltage_cf / 1000 - voltage_cb;
	   //printf("battery voltage %d mV\n",battery_voltage);
           sprintf(voltage_str,"%d", battery_voltage);
           power_data_ready = true;
        } else {
            printf("INA219_measure_voltage No ack, sensor not connected\n");
        }
        vTaskDelay(( POWER_DELAY_TIME * ( task_idx + 1 ) ) / portTICK_RATE_MS);

    }
}

/************************** power detection ********************************/


enum eIgnitionState {
  IgnitionOff,
  IgnitionRun,
  IgnitionStart,
  IgnitionUnknown,
} IgnitionState = IgnitionUnknown;

const char * get_ignition_state_label(enum eIgnitionState ignition_state) {
  switch (ignition_state) {
    case IgnitionOff: return "Off";
    case IgnitionRun: return "Run";
    case IgnitionStart: return "Start";
    case IgnitionUnknown: return "Unknown";
  }
  return "what";
}

enum eDashState {
  DashTimedOut,
  DashOn,
  DashUnknown,
} DashState = DashUnknown;

const char * get_dash_state_label(enum eDashState dash_state) {
  switch (dash_state) {
    case DashTimedOut: return "TimedOut";
    case DashOn: return "On";
    case DashUnknown: return "Unknown";
  }

  return "what";
}

CAN_device_t CAN_cfg = {0};

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
  gpio_set_level(GPIO_DISPLAY_POWER, 0); //display power
  gpio_set_level(GPIO_AUDIO_AMP_POWER, 0); //audio amp power
  gpio_set_level(GPIO_MAINBOARD_POWER, 0); //mainboard power
  gpio_set_level(GPIO_MAINBOARD_SOFT_POWER, 0); //mainboard softpower
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
enum eDashState interpret_JSON_message(char * json_string) {
  enum eDashState retval = DashUnknown;
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
                retval = DashOn;
              }
            } else {
              ESP_LOGW("json", "power_state key missing from payload of '%s'", json_string);
            }
          } else {
            ESP_LOGW("json", "payload key missing from '%s'", json_string);
          }
        } else {
          ESP_LOGW("json", "wrong type '%s' in '%s'", type->valuestring, json_string);
        }
      } else {
        ESP_LOGW("json", "type wrong type in '%s': %02x", json_string, type->type);
      }
    } else {
      ESP_LOGW("json", "type key missing from '%s'", json_string);
    }
    cJSON_Delete(root);
  } else {
    ESP_LOGW("json", "failed to parse JSON response '%s'", json_string);
  }

  return retval;
}

/***
wait for one message from the serial port, or set DashTimedOut
***/
enum eDashState query_dash_power_state() {
  char dash_input[100];
  enum eDashState retval = DashTimedOut;

  ESP_LOGI("query", "querying dash...");

  printf("{\"type\":\"status\",\"payload\":{\"get_power_state\":true}}\n");

  if (0 < read_uart_string(dash_input, sizeof(dash_input))) {
    retval = interpret_JSON_message(dash_input);
  } else {
    ESP_LOGI("query", "dash response timed out (%d ms)", DASH_RESPONSE_TIMEOUT * portTICK_PERIOD_MS);
  }

  return retval;
}

/***
"press the button" for one second
***/
void toggle_dash_power() {
  gpio_set_level(GPIO_MAINBOARD_SOFT_POWER, 1);
  vTaskDelay(1000 / portTICK_PERIOD_MS);
  gpio_set_level(GPIO_MAINBOARD_SOFT_POWER, 0);
}

/***
these two are the same for now, but could be different later
***/
void turn_dash_off() {
  ESP_LOGI("power", "turning dash off... (%0.2fs wait)", (1.0 * DASH_POWERDOWN_WAIT * portTICK_PERIOD_MS) / 1000.0);
  toggle_dash_power();
  vTaskDelay(DASH_POWERDOWN_WAIT);
  ESP_LOGI("power", "powerdown wait complete");
}

void turn_dash_on() {
  if (battery_current > MAINBOARD_ON_CURRENT) {
    ESP_LOGI("turn_dash_on", "dash is already on");
    break;
  }

  ESP_LOGI("power", "turning dash on... (%0.2fs wait)", (1.0 * DASH_POWERUP_WAIT * portTICK_PERIOD_MS) / 1000.0);
  toggle_dash_power();
  dash_wait_flag = true;
  vTaskDelay(DASH_POWERUP_WAIT);
  dash_wait_flag = false;
  ESP_LOGI("power", "powerup wait complete");
}

/***
execute the state change operator
***/
void change_dash_state(enum eDashState newstate) {
  switch (newstate) {
    case DashOn:
      if (!dash_wait_flag)  {
        ESP_LOGI("power", "waiting on dash to boot");
        break;
      }
      turn_dash_on();
      break;

    case DashTimedOut:
      //turn_dash_off(); //turning off from the OS via CAN
      break;

    default:
      break;
  }
}

/***
transition the dash's state from a specific current state.
if the precondition (current state) is not met, no transition occurs
***/
void update_dash_state(enum eDashState precondition, enum eDashState postcondition) {
  if (DashState == precondition) {
    change_dash_state(postcondition);
  } else {
    ESP_LOGI("power", "state change from %s to %s fails to meet precondition %s", get_dash_state_label(DashState), get_dash_state_label(postcondition), get_dash_state_label(precondition));
  }
}

/***
pulse the status LED
***/
void pulse_ms(int pulse_count, int high_ms, int low_ms) {
  for (; pulse_count >= 0; pulse_count -= 1) {
    gpio_set_level(GPIO_STATUS_LED, 1);
    vTaskDelay(high_ms / portTICK_PERIOD_MS);
    gpio_set_level(GPIO_STATUS_LED, 0);
    if (pulse_count > 0) {
      vTaskDelay(low_ms / portTICK_PERIOD_MS);
    }
  }
}

/***
block until dash tells us to blink once
***/
void task_BlinkOnce(void * pvParameters) {
  while (1) {
    ulTaskNotifyTake(pdTRUE, portMAX_DELAY);
    pulse_ms(3, 100, 100);
  }
}

/***
monitor and maintain the dash state based on the current ignition state
***/
void task_Dash(void *pvParameters) {
  while (1) {
    DashState = query_dash_power_state();
    switch (DashState) {
      case DashOn:
        xTaskNotifyGive(xBlink);
        ESP_LOGI("dash", "power state: on");
        break;
      case DashTimedOut: ESP_LOGI("dash", "timed out"); break;
      default: ESP_LOGW("dash", "invalid power state");
    }

    switch (IgnitionState) {
      case IgnitionRun:
      case IgnitionStart:
        update_dash_state(DashTimedOut, DashOn);
        break;

      case IgnitionOff:
        update_dash_state(DashOn, DashTimedOut);
        break;

      case IgnitionUnknown:
        break;
    }
  }
}

/***
return this frame's IgnitionStatus, or IgnitionUnknown if it is not an ignition frame
***/
enum eIgnitionState check_ignition_status(const CAN_frame_t * frame) {
  if (CAN_RTR != frame->FIR.B.RTR) {
    switch (frame->MsgID) {
      case 0x6214000:
        switch (frame->data.u64 & KEY_POSITION_MASK) {
          case KEY_POSITION_OFF: return IgnitionOff;
          case KEY_POSITION_RUN: return IgnitionRun;
          case KEY_POSITION_START: return IgnitionStart;
          default: return IgnitionUnknown;
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
  return IgnitionUnknown;
}

/***
wrap this in JSON and send to dash via serial link
***/
void forward_frame(const CAN_frame_t * frame, const unsigned int ctr) {
  int64_t ticks = esp_timer_get_time();
  printf("{\"type\": \"CAN\", \"payload\": {\"message_id\": \"0x%08x\", \"message\": {\"l32\": \"0x%08x\", \"h32\": \"0x%08x\"}, \"length\": %d, \"ticks\": {\"l32\": \"0x%08x\", \"h32\": \"0x%08x\"}, \"counter\": %u}}\n",
    frame->MsgID, frame->data.u32[0], frame->data.u32[1],
    frame->FIR.B.DLC, (uint32_t)(ticks & 0xffffffff), (uint32_t)((ticks >> 32) & 0xffffffff),
    ctr
  );
}

// 64-bit endian reversal
// <https://stackoverflow.com/a/21507710> 2018-06-02
uint64_t swapLong(uint64_t x) {
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

  // configure CAN receiver
  CAN_cfg.rx_queue = xQueueCreate(10, sizeof(CAN_frame_t));
  CAN_cfg.rx_pin_id = GPIO_CAN_RX;
  CAN_cfg.speed = 50;

  //start CAN module
  {
    int ret;
    if (0 != (ret = CAN_init())) {
      ESP_LOGE("canbus", "!!! CAN_init failed with %d\n", ret);
      vTaskDelay(1500 / portTICK_PERIOD_MS);
      esp_restart();
    }
  }

  ESP_LOGD("canbus", "Entering CAN loop");
  for (unsigned long ctr = 0; ;) {
    if (pdTRUE == xQueueReceive(CAN_cfg.rx_queue,&__RX_frame, 100 / portTICK_PERIOD_MS)) {
      // RTR frames don't have data
      if (CAN_RTR != __RX_frame.FIR.B.RTR) {
        // ESP32 CAN data payloads are reversed from what we captured with
        // SparkFun CAN Shield
        __RX_frame.data.u64 = swapLong(__RX_frame.data.u64);
      }

      enum eIgnitionState NewIgnitionState = check_ignition_status(&__RX_frame);

      if (NewIgnitionState != IgnitionUnknown) {
        if (NewIgnitionState != IgnitionState) {
          ESP_LOGI("canbus", "ignition state change from %s to %s", get_ignition_state_label(IgnitionState), get_ignition_state_label(NewIgnitionState));
          if (NewIgnitionState == IgnitionRun) {
						dash_wait_flag = true;
	  			}

          if (NewIgnitionState == IgnitionOff) {
						dash_wait_flag = false;
	  			}
          IgnitionState = NewIgnitionState;
          
        } else {
          //ESP_LOGI("canbus", "repeat ignition state %s", get_ignition_state_label(IgnitionState));
        }
      }

      ESP_LOGV("canbus", "queue size: %d", uxQueueMessagesWaiting(CAN_cfg.rx_queue));

      if (1 || DashOn == DashState) {
        forward_frame(&__RX_frame, ctr);
      } else if (CAN_RTR != __RX_frame.FIR.B.RTR) {
        // ESP_LOGV("canbus", "(dash off, q:%d) MsgID: 0x%08x, DLC: %d, Payload: 0x%016llx", uxQueueMessagesWaiting(CAN_cfg.rx_queue), __RX_frame.MsgID, __RX_frame.FIR.B.DLC, __RX_frame.data.u64);
      }

      ctr += 1;
    }
  }
}

void app_main(void) {
#ifdef _DEBUG
  esp_log_level_set("*", ESP_LOG_INFO);
#else // !_DEBUG
  esp_log_level_set("*", ESP_LOG_ERROR);
#endif // _DEBUG

#ifdef _VERBOSE
  // this prints *every* CAN message (except RTR frames which have no data)
  esp_log_level_set("canbus", ESP_LOG_VERBOSE);
#endif // _VERBOSE

  ESP_ERROR_CHECK( esp_event_loop_init(event_handler, NULL) );

  i2c_example_master_init();
  initialize_gpio();
  apply_dash_power();

  xTaskCreate(power_task, "power_task", 1024 * 2, (void* ) 1, 10, NULL);
  xTaskCreate(task_Dash, "Dash", 2048, NULL, 5, NULL);
  xTaskCreate(task_CAN, "CAN", 2048, NULL, 5, NULL);
  xTaskCreate(task_BlinkOnce, "blink", configMINIMAL_STACK_SIZE, NULL, 5, &xBlink);

  while (1) {
#ifdef _DEBUG
    gpio_set_level(GPIO_STATUS_LED, 1);
    vTaskDelay(25 / portTICK_PERIOD_MS);
    gpio_set_level(GPIO_STATUS_LED, 0);
    vTaskDelay(1475 / portTICK_PERIOD_MS);
#else // !_DEBUG
    vTaskSuspend(NULL);
#endif // _DEBUG
  }
}

