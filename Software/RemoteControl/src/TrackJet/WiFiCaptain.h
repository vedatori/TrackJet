#pragma once

#include "Arduino.h"
#include "WebSocketsServer.h"   //https://github.com/Links2004/arduinoWebSockets

struct credentials {
    char ssid[33] = "";
    char password[65] = "";
};

void handleRoot();
void handleStatus();
void handleStyle();
void handleRedirectRoot();
void redirect(String path);
void handleSoftApEnable();
void handleWifi();
void handleWifiSave();
void handleNotFound();
void softApEnable();
void softApDisable();
void connectWifiAsClient(const credentials aCredentials);
void loadCredentials();
void saveCredentials(const credentials aCredentials);
void wifiCaptInit();
void handleClients(void * param);
bool getLastConnectionType();
void setApCredentials(String ssid, String password);
String ipToDisp();

void onWebSocketEvent(uint8_t client_num, WStype_t type, uint8_t * payload, size_t length);
char * commandGetCaptain();
void commandClearCaptain();
void commandSendCaptain(String msgType, String payload);