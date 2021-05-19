#pragma once

#include "SerialPWM.h"
#include <Arduino.h>
#include "Preferences.h"

#include "WiFiCaptain.h"
#include "QuadEncoder.h"

namespace TJ {

const uint16_t PWM_FREQUENCY = 1000;

const uint8_t REG_DAT = 13;
const uint8_t REG_CLK = 14;
const uint8_t REG_LATCH = 12;
const uint8_t REG_OE = 25;
const uint8_t I2C_SDA = 21;
const uint8_t I2C_SCL = 22;

const uint8_t ENC_A = 15;
const uint8_t ENC_B = 5;
const uint8_t ENC_SW = 23;
const uint8_t BUTTON = 18;

const float MOTOR_SPEED_FILTER_UPDATE_COEF = 0.15;
const uint8_t FREQ_PWM_THRESHOLD = 40;
const char STORAGE_NAMESPACE[] = "TrackJet";
const uint16_t communicationTimeout = 1000;
const uint16_t lettersSwapTimeout = 500;
const uint16_t lettersBlankTimeout = 50;
const uint16_t lettersSweepTimeout =  150;

extern SerialPWM serialPWM;
extern QuadEncoder quadEnc;
void updatePWM(void * param);
void handleRot();
void handleSW();
}

enum shiftRegPins {
    MOTA1, MOTA2, MOTB1, MOTB2, STEP_EN, STEP_MODE, MOT1, MOT2, MOT3, MOT4, 
    XSHUT, LED2, LED1, MUXA, MUXB, MUXC
};

class TrackJetClass {
    bool beginCalled = false;
    int8_t motorsSpeed[3];
    float motorsSpeedFiltered[3];
    bool gyroEnabled = false;
    float gyroYPR[3];
    int16_t gyroOffsets[3];
    Preferences preferences;
    uint32_t prevCommunicationTime = 0;
    bool connectionEnabled = false;
    bool connectionActive = false;
    uint32_t beepingEnd = 0;
    String displayTextBuffer;

public:
    TrackJetClass();
    void begin();

    bool buttonRead();
    uint16_t potentiometerRead();
    bool encoderReadButton();
    bool encoderReadButtonPulse();
    int16_t encoderRead();
    void encoderReset();

    void motorsSetSpeed(const int8_t speed, const int8_t index);
    void motorsUpdateSpeed();
    void controlMovement(const int8_t joystickX, const int8_t joystickY);
    void buzzerBeep(const uint16_t length);
    
    bool gyroGetEnabled();
    float gyroData(uint8_t index) ;
    void gyroCalibrate();
    void gyroUpdate();
    void printOffsets() {
        printf("offsets: %d %d %d\n", gyroOffsets[0], gyroOffsets[1], gyroOffsets[2]);
    }

    void displaySingle(uint8_t row, uint8_t col, int8_t value);
    void displayAll(int8_t value);
    void display(uint8_t state[][DISP_COLS]);
    void displayDigit(const uint8_t digit);
    void displayChar(const char letter, int8_t sweepRight = 0, int8_t sweepDown = 0);
    void displayText(String text = "", bool sweep = true);
    bool displayIsBusy();

    void startWiFiCaptain(String ssid, String password);
    void checkConnection();
    String commandGet();
    String commandGetIndexed(uint8_t index);
    void commandClear();
    void commandSend(String command);
};

extern TrackJetClass TrackJet;
