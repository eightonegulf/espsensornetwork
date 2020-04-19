#include <ESP8266WiFi.h>
#include <EEPROM.h>

#include "WifiComs.h"
#include "SensorManager.h"
#include "Sensor.h"
#include "FakeSensor.h"
#include "AnalogReadSensor.h"

SensorManager * sensorManager;
WifiComs * wificoms;

void InitSensors(){
  sensorManager->AddSensor(new FakeSensor("Fake 1"));
  sensorManager->AddSensor(new FakeSensor("Fake "));
  sensorManager->AddSensor(new AnalogReadSensor("Analog"));
}

void setup() {
  Serial.begin(115200);
  Serial.println("");
  
  sensorManager = new SensorManager();
  wificoms = new WifiComs(sensorManager);
  InitSensors();
}

void loop() {
  sensorManager->UpdateAll();  
  wificoms->HandleClients();
  
  Serial.println("Going to sleep");
  ESP.deepSleep(1 * 1 * 1e6);
}
