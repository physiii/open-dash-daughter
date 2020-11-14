#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "driver/gpio.h"

#define IGNITION_WIRE_IO CONFIG_IGNITION_WIRE_IO
#define MAIN_POWER_IO CONFIG_MAIN_POWER_IO
#define DISPLAY_POWER_IO CONFIG_DISPLAY_POWER_IO
#define AUDIO_STBY_IO CONFIG_AUDIO_STBY_IO
#define AUDIO_MUTE_IO CONFIG_AUDIO_MUTE_IO
#define J1850_INPUT_PIN CONFIG_J1850_INPUT_PIN
#define J1850_OUTPUT_PIN CONFIG_J1850_OUTPUT_PIN

#define GPIO_OUTPUT_PIN_SEL  ((1ULL<<J1850_OUTPUT_PIN) | (1ULL<<MAIN_POWER_IO) | (1ULL<<DISPLAY_POWER_IO) | (1ULL<<AUDIO_STBY_IO) | (1ULL<<AUDIO_MUTE_IO))
#define GPIO_INPUT_PIN_SEL  ((1ULL<<IGNITION_WIRE_IO) | (1ULL<<J1850_INPUT_PIN))
#define ESP_INTR_FLAG_DEFAULT 0

void gpio_main(void)
{
    gpio_config_t io_conf;
    //disable interrupt
    io_conf.intr_type = GPIO_INTR_DISABLE;
    //set as output mode
    io_conf.mode = GPIO_MODE_OUTPUT;
    //bit mask of the pins that you want to set,e.g.GPIO18/19
    io_conf.pin_bit_mask = GPIO_OUTPUT_PIN_SEL;
    //disable pull-down mode
    io_conf.pull_down_en = 0;
    //disable pull-up mode
    io_conf.pull_up_en = 0;
    //configure GPIO with the given settings
    gpio_config(&io_conf);

    //interrupt of rising edge
    io_conf.intr_type = GPIO_INTR_ANYEDGE;
    //bit mask of the pins, use GPIO4/5 here
    io_conf.pin_bit_mask = GPIO_INPUT_PIN_SEL;
    //set as input mode
    io_conf.mode = GPIO_MODE_INPUT;
    //enable pull-up mode
    io_conf.pull_up_en = 0;
    gpio_config(&io_conf);

    //create a queue to handle gpio event from isr
    // gpio_evt_queue = xQueueCreate(10, sizeof(uint32_t));
    //start gpio task
    // xTaskCreate(gpio_task_example, "gpio_task_example", 2048, NULL, 10, NULL);

    //install gpio isr service
    gpio_install_isr_service(ESP_INTR_FLAG_DEFAULT);
    //hook isr handler for specific gpio pin
    // gpio_isr_handler_add(GPIO_INPUT_IO_0, gpio_isr_handler, (void*) GPIO_INPUT_IO_0);
    //hook isr handler for specific gpio pin
    // gpio_isr_handler_add(GPIO_INPUT_IO_1, gpio_isr_handler, (void*) GPIO_INPUT_IO_1);

    //remove isr handler for gpio number.
    // gpio_isr_handler_remove(GPIO_INPUT_IO_0);
    //hook isr handler for specific gpio pin again
    // gpio_isr_handler_add(GPIO_INPUT_IO_0, gpio_isr_handler, (void*) GPIO_INPUT_IO_0);
}
