#include "AnalogReadSensor.h"

AnalogReadSensor::AnalogReadSensor(char * name){
  pinMode(A0,INPUT);
  
  _sensorName = name;
  _sensorType = "AnalogReadSensor";
}

void AnalogReadSensor::Update(){
  return;
}

int AnalogReadSensor::GetNumberOfMeasurements(){
  return 1;
}

int AnalogReadSensor::GetMeasuredData(Measurement * measurements){
  measurements[0].name = "A0";
  measurements[0].value = analogRead(A0);
  return GetNumberOfMeasurements();
}
