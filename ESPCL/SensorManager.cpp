#include "SensorManager.h"

SensorManager::SensorManager(){
  
}

void SensorManager::AddSensor(Sensor * sensor){
  sensors.push_back(sensor);
  Serial.print("Sensor added to manager: ");
  Serial.println(sensor->GetSensorName());
}

void SensorManager::UpdateAll(){
  for(int i = 0 ; i < sensors.size() ; i++){
    sensors[i]->Update(); 
  }
}

int SensorManager::GetNumSensors(){
  return sensors.size();
}
String SensorManager::GetJSONForSensor(int i){
  String result = "";
  result+= "{\"name\":\"";
  result+=sensors[i]->GetSensorName();
  result+="\",\"type\":\"";
  result+=sensors[i]->GetSensorType();
  result+="\",\"measurements\":[";
  
  Measurement * data;
  data = new Measurement[sensors[i]->GetNumberOfMeasurements()];
  int num = sensors[i]->GetMeasuredData(data);
  for(int i = 0 ; i < num ; i++){
    result+="{\"name\":\"";
    result+=data[i].name;
    result+="\",\"value\":\"";
    result+=data[i].value;    
    result+="\"},";
  }
  result+="]},";
  return result;
}
