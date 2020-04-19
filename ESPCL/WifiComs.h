#pragma once

#include <ESP8266WiFi.h>
#include <EEPROM.h>
#include "SensorManager.h"

#define WIFI_NAME "esp8266wifi"
#define WIFI_PASSWORD "3HxWVZQ3O"
#define DATA_GATEWAY "10.0.0.1"
#define DATA_PORT 80
#define UID_LENGTH 8


class WifiComs{
  public:
    WifiComs(SensorManager * sensormanager);
    void HandleClients(); 

  private:
    bool wificonnect();
    bool tryconnect();
    void wifidisconnect();
    void ReadSensorsToClient();
    void ReadUIDFromFlash();
    void GenerateUID();

    
    SensorManager * _sensormanager;
    WiFiClient client;
    byte UID[UID_LENGTH];
};
