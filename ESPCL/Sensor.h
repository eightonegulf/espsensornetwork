#pragma once
#include <ESP8266WiFi.h>

struct Measurement{
  String name;
  float value;
};

class Sensor{
  public:
    char * GetSensorName(){ return _sensorName; };
    char * GetSensorType(){ return _sensorType; };
    virtual void Update() = 0;
    virtual int GetMeasuredData(Measurement * measurements) = 0;
    virtual int GetNumberOfMeasurements();

  protected:
    char * _sensorName;
    char * _sensorType;
};
