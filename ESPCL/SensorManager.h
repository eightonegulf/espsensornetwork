#pragma once

#include "Sensor.h"
#include <vector>

class SensorManager {
  public:
    SensorManager();
    void UpdateAll();
    int GetNumSensors();
    String GetJSONForSensor(int i);
    void AddSensor(Sensor * sensor);
  private:
    std::vector<Sensor*> sensors;
};
