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

#define RMT_TICK_10_US (80000000/RMT_CLK_DIV/100000)
#define RMT_CLK_DIV 100
#define PULSE_T0H_NS (350)
#define PULSE_T1H_NS (700)
#define PULSE_T0L_NS (800)
#define PULSE_T1L_NS (600)
#define PULSE_RES_NS (50000)

#define PULSE_T0H_US (PULSE_T0H_NS / 1000)
#define PULSE_T1H_US (PULSE_T1H_NS / 1000)
#define PULSE_T0L_US (PULSE_T0L_NS / 1000)
#define PULSE_T1L_US (PULSE_T1L_NS / 1000)
#define PULSE_RES_US (PULSE_RES_NS / 1000)

#define US_TO_RMT_TICK(u) (u / 10 * RMT_TICK_10_US)

#define PULSE_T0H (US_TO_RMT_TICK(PULSE_T0H_US))
#define PULSE_T1H (US_TO_RMT_TICK(PULSE_T1H_US))
#define PULSE_T0L (US_TO_RMT_TICK(PULSE_T0L_US))
#define PULSE_T1L (US_TO_RMT_TICK(PULSE_T1L_US))
#define PULSE_RES (US_TO_RMT_TICK(PULSE_RES_US))

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
  {{{ PULSE_T0H, 1, PULSE_T0L, 0 }}},
  {{{ PULSE_T0H, 1, PULSE_T0L, 0 }}},
  {{{ PULSE_T0H, 1, PULSE_T0L, 0 }}},
  {{{ PULSE_T0H, 1, PULSE_T0L, 0 }}},
  {{{ PULSE_T0H, 1, PULSE_T0L, 0 }}},
  {{{ PULSE_T0H, 1, PULSE_T0L, 0 }}},
  {{{ PULSE_T0H, 1, PULSE_T0L, 0 }}},
  {{{ PULSE_T0H, 1, PULSE_T0L, 0 }}},

  // frame 0 red 255, send eight 1 bits (1_code)
  {{{ PULSE_T1H, 1, PULSE_T1L, 0 }}},
  {{{ PULSE_T1H, 1, PULSE_T1L, 0 }}},
  {{{ PULSE_T1H, 1, PULSE_T1L, 0 }}},
  {{{ PULSE_T1H, 1, PULSE_T1L, 0 }}},
  {{{ PULSE_T1H, 1, PULSE_T1L, 0 }}},
  {{{ PULSE_T1H, 1, PULSE_T1L, 0 }}},
  {{{ PULSE_T1H, 1, PULSE_T1L, 0 }}},
  {{{ PULSE_T1H, 1, PULSE_T1L, 0 }}},

  // frame 0 blue 0, send eight 0 bits (0_code)
  {{{ PULSE_T0H, 1, PULSE_T0L, 0 }}},
  {{{ PULSE_T0H, 1, PULSE_T0L, 0 }}},
  {{{ PULSE_T0H, 1, PULSE_T0L, 0 }}},
  {{{ PULSE_T0H, 1, PULSE_T0L, 0 }}},
  {{{ PULSE_T0H, 1, PULSE_T0L, 0 }}},
  {{{ PULSE_T0H, 1, PULSE_T0L, 0 }}},
  {{{ PULSE_T0H, 1, PULSE_T0L, 0 }}},
  {{{ PULSE_T0H, 1, PULSE_T0L, 0 }}},

  // send a reset code
  {{{ PULSE_RES, 0, 0, 0 }}}
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
    config.clk_div = 255;
    config.gpio_num = RMT_TX_GPIO;
    config.mem_block_num = 1;

    config.tx_config.loop_en = 0; // loop the current configuration
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

    while (1)
    {
        ESP_ERROR_CHECK(rmt_write_items(RMT_TX_CHANNEL, items, number_of_items, true));
        ESP_LOGI(RMT_TX_TAG, "Transmission complete");
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
    vTaskDelete(NULL);
}