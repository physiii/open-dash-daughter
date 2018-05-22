#include "freertos/FreeRTOS.h"
#include "esp_wifi.h"
#include "esp_system.h"
#include "esp_event.h"
#include "esp_event_loop.h"
#include "nvs_flash.h"
#include "driver/gpio.h"

#include "CAN.h"

CAN_device_t CAN_cfg = {0};

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
      vTaskDelay(1500 / portTICK_PERIOD_MS);
      esp_restart();
    }

    printf("Entering CAN loop\n");
    bool was_started = false;
    bool engine_started = false;
    unsigned long ctr = 0;
    while (1){
        //receive next CAN frame from queue
        if(xQueueReceive(CAN_cfg.rx_queue,&__RX_frame, 3*portTICK_PERIOD_MS)==pdTRUE){



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


				//printf("\nInvariant: %llx -> %llx", message_data, message_data_invariant);
				//printf("\nVariant: %llx -> %llx\n", message_data, message_data_variant);

				printf("%08x %llx\n", __RX_frame.MsgID, message_data_invariant);

				if(message_data_invariant==0xbf00000ffff0f) {
					if (!was_started) continue;
					printf("\nKEY MOVED TO OFF POSITION!");
					gpio_set_level(GPIO_NUM_5, 0);
					vTaskDelay(2000 / portTICK_PERIOD_MS);
					gpio_set_level(GPIO_NUM_5, 1);
					was_started = false;
					engine_started = false;

				        printf("\nInvariant: %llx -> %llx", message_data, message_data_invariant);
				        printf("\nVariant: %llx -> %llx\n", message_data, message_data_variant);
				}

				if(message_data_invariant==0xbff0000ffff0f) {
					if (was_started) continue;

			        printf("\nInvariant: %llx -> %llx", message_data, message_data_invariant);
			        printf("\nVariant: %llx -> %llx\n", message_data, message_data_variant);

					printf("\nKEY MOVED TO RUN POSITION!");
				        gpio_set_level(GPIO_NUM_5, 0);
				        vTaskDelay(2000 / portTICK_PERIOD_MS);
				        gpio_set_level(GPIO_NUM_5, 1);
					was_started = true;
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

    gpio_set_direction(GPIO_NUM_2, GPIO_MODE_OUTPUT);
    gpio_set_direction(GPIO_NUM_5, GPIO_MODE_OUTPUT);
    gpio_set_level(GPIO_NUM_5, 1);
    xTaskCreate(&task_CAN, "CAN", 2048, NULL, 5, NULL);


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
        gpio_set_level(GPIO_NUM_2, 1);
        vTaskDelay(25 / portTICK_PERIOD_MS);
        gpio_set_level(GPIO_NUM_2, 0);
        vTaskDelay(1475 / portTICK_PERIOD_MS);
    }
}

