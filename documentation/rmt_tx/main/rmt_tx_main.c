/* RMT transmit example

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_log.h"
#include "driver/rmt.h"

static const char *RMT_TX_TAG = "RMT Tx";

#define RMT_TX_CHANNEL RMT_CHANNEL_0
#define RMT_TX_GPIO 18

// RMT_BASECLK_APB is not defined anywhere I can see, assuming default 80MHz
#define MY_RMT_BASECLK_APB (80)

#define RMT_CLK_DIV 1
#define PULSE_T0H_US (0.35)
#define PULSE_T1H_US (0.7)
#define PULSE_T0L_US (0.8)
#define PULSE_T1L_US (0.6)
#define PULSE_RES_US (50)

#define T0H_TICKS ((int)(MY_RMT_BASECLK_APB * PULSE_T0H_US))
#define T1H_TICKS ((int)(MY_RMT_BASECLK_APB * PULSE_T1H_US))
#define T0L_TICKS ((int)(MY_RMT_BASECLK_APB * PULSE_T0L_US))
#define T1L_TICKS ((int)(MY_RMT_BASECLK_APB * PULSE_T1L_US))
#define RES_TICKS ((int)(MY_RMT_BASECLK_APB * PULSE_RES_US))

struct rgb_t {
  unsigned char r, g, b;
};

/*
 * Prepare a raw table with a message in the Morse code
 *
 * The message is "ESP" : . ... .--.
 *
 * The table structure represents the RMT item structure:
 * {duration, level, duration, level}
 *
 */

rmt_item32_t morse_items[] = {
    // E : dot
    {{{ 32767, 1, 32767, 0 }}}, // dot
    //
    {{{ 32767, 0, 32767, 0 }}}, // SPACE
    // S : dot, dot, dot
    {{{ 32767, 1, 32767, 0 }}}, // dot
    {{{ 32767, 1, 32767, 0 }}}, // dot
    {{{ 32767, 1, 32767, 0 }}}, // dot
    //
    {{{ 32767, 0, 32767, 0 }}}, // SPACE
    // P : dot, dash, dash, dot
    {{{ 32767, 1, 32767, 0 }}}, // dot
    {{{ 32767, 1, 32767, 1 }}},
    {{{ 32767, 1, 32767, 0 }}}, // dash
    {{{ 32767, 1, 32767, 1 }}},
    {{{ 32767, 1, 32767, 0 }}}, // dash
    {{{ 32767, 1, 32767, 0 }}}, // dot

    // RMT end marker
    {{{ 0, 1, 0, 0 }}}
};

// let's just turn on the first light red
// {{{ duration0_in_ticks, level0, duration1_in_ticks, level1 }}}
rmt_item32_t items[] = {
  // frame 0: g=0, r=255, b=0
  // frame 0 green, send eight zero bits (0_code)
  {{{ T0H_TICKS, 1, T0L_TICKS, 0 }}},
  {{{ T0H_TICKS, 1, T0L_TICKS, 0 }}},
  {{{ T0H_TICKS, 1, T0L_TICKS, 0 }}},
  {{{ T0H_TICKS, 1, T0L_TICKS, 0 }}},
  {{{ T0H_TICKS, 1, T0L_TICKS, 0 }}},
  {{{ T0H_TICKS, 1, T0L_TICKS, 0 }}},
  {{{ T0H_TICKS, 1, T0L_TICKS, 0 }}},
  {{{ T0H_TICKS, 1, T0L_TICKS, 0 }}},

  // frame 0 red 255, send eight 1 bits (1_code)
  {{{ T1H_TICKS, 1, T1L_TICKS, 0 }}},
  {{{ T1H_TICKS, 1, T1L_TICKS, 0 }}},
  {{{ T1H_TICKS, 1, T1L_TICKS, 0 }}},
  {{{ T1H_TICKS, 1, T1L_TICKS, 0 }}},
  {{{ T1H_TICKS, 1, T1L_TICKS, 0 }}},
  {{{ T1H_TICKS, 1, T1L_TICKS, 0 }}},
  {{{ T1H_TICKS, 1, T1L_TICKS, 0 }}},
  {{{ T1H_TICKS, 1, T1L_TICKS, 0 }}},

  // frame 0 blue 0, send eight 0 bits (0_code)
  {{{ T0H_TICKS, 1, T0L_TICKS, 0 }}},
  {{{ T0H_TICKS, 1, T0L_TICKS, 0 }}},
  {{{ T0H_TICKS, 1, T0L_TICKS, 0 }}},
  {{{ T0H_TICKS, 1, T0L_TICKS, 0 }}},
  {{{ T0H_TICKS, 1, T0L_TICKS, 0 }}},
  {{{ T0H_TICKS, 1, T0L_TICKS, 0 }}},
  {{{ T0H_TICKS, 1, T0L_TICKS, 0 }}},
  {{{ T0H_TICKS, 1, T0L_TICKS, 0 }}},

  // send a reset code
  {{{ RES_TICKS, 0, 0, 0 }}}
};

/*
 * Initialize the RMT Tx channel
 */
static void rmt_tx_int()
{
    rmt_config_t config;
    config.rmt_mode = RMT_MODE_TX;
    config.channel = RMT_TX_CHANNEL;
    config.gpio_num = RMT_TX_GPIO;
    config.mem_block_num = 1;
    config.tx_config.loop_en = 0;
    // enable the carrier to be able to hear the Morse sound
    // if the RMT_TX_GPIO is connected to a speaker
    config.tx_config.carrier_en = 1;
    config.tx_config.idle_output_en = 1;
    config.tx_config.idle_level = 0;
    config.tx_config.carrier_duty_percent = 50;
    // set audible career frequency of 611 Hz
    // actually 611 Hz is the minimum, that can be set
    // with current implementation of the RMT API
    config.tx_config.carrier_freq_hz = 611;
    config.tx_config.carrier_level = 1;
    // set the maximum clock divider to be able to output
    // RMT pulses in range of about one hundred milliseconds
    config.clk_div = 255;

    ESP_ERROR_CHECK(rmt_config(&config));
    ESP_ERROR_CHECK(rmt_driver_install(config.channel, 0, 0));
}

static void ws2812_rmt_tx_init() {
    rmt_config_t config;

    config.rmt_mode = RMT_MODE_TX;
    config.channel = RMT_TX_CHANNEL;
    config.clk_div = RMT_CLK_DIV;
    config.gpio_num = RMT_TX_GPIO;
    config.mem_block_num = 1;

    config.tx_config.loop_en = 1; // loop the current configuration
    config.tx_config.carrier_en = 0;
    config.tx_config.idle_output_en = 1;
    config.tx_config.idle_level = 1;

    ESP_ERROR_CHECK(rmt_config(&config));
    ESP_ERROR_CHECK(rmt_driver_install(config.channel, 0, 0));
}

void app_main(void *ignore)
{
    ESP_LOGI(RMT_TX_TAG, "Configuring transmitter");
    ws2812_rmt_tx_init();
    int number_of_items = sizeof(items) / sizeof(items[0]);

    ESP_LOGI(RMT_TX_TAG, "APB: %dMHz\nT0H ticks: %d\nT1H ticks: %d\nT0L ticks: %d\nT1L ticks: %d\nRES ticks: %d", MY_RMT_BASECLK_APB, T0H_TICKS, T1H_TICKS, T0L_TICKS, T1L_TICKS, RES_TICKS);

    while (1)
    {
        ESP_ERROR_CHECK(rmt_write_items(RMT_TX_CHANNEL, items, number_of_items, true));
        ESP_LOGI(RMT_TX_TAG, "Transmission complete");
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
    vTaskDelete(NULL);
}
