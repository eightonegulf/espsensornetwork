#pragma once
#include "Sensor.h"
#include <ESP8266WiFi.h>

class FakeSensor : public Sensor{
    public:
      FakeSensor(char * name);
      virtual void Update();
      virtual int GetMeasuredData(Measurement * measurements);
      virtual int GetNumberOfMeasurements();
};
