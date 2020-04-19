#pragma once
#include "Sensor.h"
#include <ESP8266WiFi.h>

class AnalogReadSensor : public Sensor{
  public:
    AnalogReadSensor (char * name);
    virtual void Update();
    virtual int GetMeasuredData(Measurement * measurements);
    virtual int GetNumberOfMeasurements();
};
