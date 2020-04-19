#include "FakeSensor.h"


FakeSensor::FakeSensor(char * name){
  _sensorName = name;
  _sensorType = "FakeSensor";
}

void FakeSensor::Update(){
  return;
}

int FakeSensor::GetNumberOfMeasurements(){
  return 2;
}

int FakeSensor::GetMeasuredData(Measurement * measurements){
  measurements[0].name = "FakeMeasure1";
  measurements[0].value = 10.5f;

  measurements[1].name = "FakeMeasure2";
  measurements[1].value = 99.9f;
  
  return GetNumberOfMeasurements();
}
