#include "freertos/FreeRTOS.h"
#include "esp_wifi.h"
#include "esp_system.h"
#include "esp_event.h"
#include "esp_event_loop.h"
#include "nvs_flash.h"
#include "driver/gpio.h"

#include "CAN.h"

CAN_device_t CAN_cfg = {
};

esp_err_t event_handler(void *ctx, system_event_t *event)
{
  // printf("event: %s\n", fmt_event_id(event->event_id));
  return ESP_OK;
}

// from <http://www.barth-dev.de/can-driver-esp32/> and
// <http://www.barth-dev.de/wp-content/uploads/2017/01/ESP32_CAN_demo.zip>
// as accessed 2018-04-26
void task_CAN( void *pvParameters ){
    (void)pvParameters;

    //frame buffer
    CAN_frame_t __RX_frame;

    //create CAN RX Queue
    CAN_cfg.rx_queue = xQueueCreate(10,sizeof(CAN_frame_t));
    CAN_cfg.rx_pin_id = GPIO_NUM_4;
    CAN_cfg.speed = 50;

    //start CAN Module
    int ret;
    if (0 != (ret = CAN_init())) {
      printf("CAN_init failed with %d\n", ret);
      vTaskDelete(NULL);
    }

    printf("Entering CAN loop\n");

    while (1){
        //receive next CAN frame from queue
        if(xQueueReceive(CAN_cfg.rx_queue,&__RX_frame, 3*portTICK_PERIOD_MS)==pdTRUE){


        	//do stuff!
        	if(__RX_frame.FIR.B.FF==CAN_frame_std)
        		printf("New standard frame");
        	else
        		printf("New extended frame");

        	if(__RX_frame.FIR.B.RTR==CAN_RTR)
        		printf(" RTR from 0x%08x, DLC %d\r\n",__RX_frame.MsgID,  __RX_frame.FIR.B.DLC);
        	else
        		printf(" from 0x%08x, DLC %d, dataL: 0x%08x, dataH: 0x%08x \r\n",__RX_frame.MsgID,  __RX_frame.FIR.B.DLC, __RX_frame.data.u32[0],__RX_frame.data.u32[1]);

        	//loop back frame
        	// CAN_write_frame(&__RX_frame);
        }
    }
}

void app_main(void)
{
    ESP_ERROR_CHECK( esp_event_loop_init(event_handler, NULL) );

    gpio_set_direction(GPIO_NUM_2, GPIO_MODE_OUTPUT);

    int level = 0;
    int loop_ctr = 0;

    xTaskCreate(&task_CAN, "CAN", 2048, NULL, 5, NULL);

    while (1) {
        gpio_set_level(GPIO_NUM_2, (level = !level));
        vTaskDelay(25 / portTICK_PERIOD_MS);
        gpio_set_level(GPIO_NUM_2, (level = !level));
        vTaskDelay(1475 / portTICK_PERIOD_MS);
        printf("blink loop %d\n", loop_ctr);
        loop_ctr += 1;
    }
}

