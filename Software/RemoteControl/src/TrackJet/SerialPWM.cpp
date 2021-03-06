#include <freertos/FreeRTOS.h>

#include <cassert>
#include <cstdint>
#include <cstring>

#include "SerialPWM.h"

int8_t SerialPWM::pwm_index[PWM_CHANNELS] = {3, 2, 29, 28, 31, 30, 25, 24, 27, 26, 21, 20, 23, 22, 17, 16, 19, 18, 13, 12, 15, 14, 9, 8, 11, 10, 5, 4, 7, 6, 1, 0};
uint8_t SerialPWM::row_pin_index[DISP_ROWS] = {23, 22, 21, 20, 19, 18, 17, 16};
uint8_t SerialPWM::col_pin_index[DISP_COLS] = {31, 30, 29, 28, 27, 26, 25, 24};
uint8_t SerialPWM::m_pwm[PWM_CHANNELS] = {0, };
uint8_t SerialPWM::m_disp[DISP_ROWS][DISP_COLS] = {0, };

volatile void* SerialPWM::i2snum2struct(const int num) {
    assert(num >= 0 && num < 2);
    switch (num) {
    case 0:
        return static_cast<volatile void*>(&I2S0);
    case 1:
        return static_cast<volatile void*>(&I2S1);
    }
    return nullptr;
}

SerialPWM::SerialPWM(
    const int data_pin,
    const int latch_pin,
    const int clock_pin,
    const int output_enable_pin,
    const int frequency,
    const int i2s) {
    m_output_enable_pin = output_enable_pin;
    m_i2s = i2snum2struct(i2s);
    for (int buffer = 0; buffer != sc_buffers; ++buffer) {  // for 2 buffers
        m_buffer_descriptors[buffer] = static_cast<i2s_parallel_buffer_desc_t*>(heap_caps_malloc((sc_resolution + 1) * sizeof(i2s_parallel_buffer_desc_t), MALLOC_CAP_32BIT)); // +1 for end mark
        for (int i = 0; i != sc_resolution; ++i) {
            uint8_t* p_buffer = static_cast<uint8_t*>(heap_caps_malloc(c_channels, MALLOC_CAP_DMA));
            m_buffer_descriptors[buffer][i].memory = p_buffer;
            m_buffer_descriptors[buffer][i].size = c_channels;
            memset(p_buffer, 0, c_channels);
            p_buffer[0] = (1 << (1 & 7)); // latch pin
            m_buffer[buffer][i] = p_buffer;
        }
        m_buffer_descriptors[buffer][sc_resolution].memory = nullptr;
    }

    i2s_parallel_config_t cfg;
    cfg.bits = I2S_PARALLEL_BITS_8;

    int i = 0;
    cfg.gpio_bus[i++] = data_pin;
    cfg.gpio_bus[i++] = latch_pin;
    for (; i != 24; ++i)
        cfg.gpio_bus[i] = -1;
    cfg.gpio_wclk = -1;
    cfg.inv_wclk = false;
    cfg.gpio_bclk = clock_pin;
    cfg.inv_bclk = false;
    cfg.clkspeed = frequency * sc_resolution * c_channels;
    cfg.bufa = m_buffer_descriptors[0];
    cfg.bufb = m_buffer_descriptors[1];
    
    set_output(false);
    gpio_set_direction((gpio_num_t)m_output_enable_pin, GPIO_MODE_OUTPUT);

    i2s_parallel_setup(static_cast<i2s_dev_t*>(m_i2s), &cfg);
    update();
}

SerialPWM::~SerialPWM() {
    i2s_driver_uninstall(static_cast<i2s_port_t>(i2snum(static_cast<i2s_dev_t*>(m_i2s))));
    for (int buffer = 0; buffer != sc_buffers; ++buffer) {
        heap_caps_free(m_buffer_descriptors[buffer]);
        m_buffer_descriptors[buffer] = nullptr;
        for (int i = 0; i != sc_resolution; ++i) {
            heap_caps_free(m_buffer[buffer][i]);
            m_buffer[buffer][i] = nullptr;
        }
    }
}

void SerialPWM::setPWM(uint8_t index, uint8_t width) {
    if(index < PWM_CHANNELS)
        m_pwm[index] = width;
}
void SerialPWM::setDisp(uint8_t state[][DISP_COLS]) {
    memcpy(m_disp, state, DISP_ROWS*DISP_COLS*sizeof(uint8_t));
}
void SerialPWM::setDispAll(uint8_t brightness) {
    for(uint8_t row = 0; row < DISP_ROWS; ++row) {
        for(uint8_t col = 0; col < DISP_COLS; ++col) {
            m_disp[row][col] = brightness;
        }
    }
}
void SerialPWM::setDispSingle(uint8_t row, uint8_t col, uint8_t brightness) {
    if(row < DISP_ROWS && col < DISP_COLS)
        m_disp[row][col] = brightness;
}

void SerialPWM::update() {
    m_active_buffer ^= 1;
    for (int sample = 0; sample != sc_resolution; ++sample) {
        for (int channel = 0; channel != PWM_CHANNELS; ++channel) {
            uint8_t& value = m_buffer[m_active_buffer][sample][pwm_index[channel]];
            if (sample < m_pwm[channel])
                value |= 1;
            else
                value &= ~1;
        }
        
        // Turn all off
        for (int channel = 0; channel != DISP_ROWS; ++channel) {
            m_buffer[m_active_buffer][sample][pwm_index[row_pin_index[channel]]] |= 1;  // Turn off rows
            m_buffer[m_active_buffer][sample][pwm_index[col_pin_index[channel]]] &= ~1; // Turn off cols
        }
        
        m_buffer[m_active_buffer][sample][pwm_index[row_pin_index[sample/12]]] &= ~1;   // Turn on 1 row
        for (int col = 0; col != DISP_COLS; ++col) {
            uint8_t& value = m_buffer[m_active_buffer][sample][pwm_index[col_pin_index[col]]];
            if ((sample % DISP_PWM_RESOLUTION) < m_disp[sample/DISP_PWM_RESOLUTION][col])
                value |= 1;
            else
                value &= ~1;
        }
    }
    i2s_parallel_flip_to_buffer(static_cast<i2s_dev_t*>(m_i2s), m_active_buffer);
}

void SerialPWM::set_output(bool state) {
    gpio_set_level((gpio_num_t)m_output_enable_pin, !state);
}

int SerialPWM::resolution() { return sc_resolution; }