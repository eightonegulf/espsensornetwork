#include "WifiComs.h"


WifiComs::WifiComs(SensorManager * sensormanager){
  pinMode(A0, INPUT);
  EEPROM.begin(8);
  
  ReadUIDFromFlash();
  _sensormanager = sensormanager;
}

void WifiComs::HandleClients(){
  if(wificonnect()){
    Serial.println("Connected to wifi");
    if(client.connect(DATA_GATEWAY, DATA_PORT)){
      Serial.println("Connected to socket");
  
      for(byte i = 0 ; i < UID_LENGTH ; i++){
        client.write(UID[i]);
      }
      client.flush();

      ReadSensorsToClient();

      client.write(0);
      client.flush();
      client.stop();
      Serial.println("Succesfully send data and disconnected");
    }else{
      Serial.println("Failed to connect to socket");
    }
  }else{
    Serial.println("Failed to connect to wifi");
  }
  wifidisconnect();
}

bool WifiComs::wificonnect(){
  int i = 0;
  while(!tryconnect()){
    if(i++>=3)return false;
  }
  Serial.println("Wifi connected");
  Serial.println(WiFi.localIP());
  return true;
}

bool WifiComs::tryconnect(){
  
  Serial.println("Trying to connect to wifi");
  WiFi.begin(WIFI_NAME, WIFI_PASSWORD);
  int i = 0;
  while (WiFi.status() != WL_CONNECTED) {
    if(i++>15){
      wifidisconnect();
      Serial.println("Connecting failed!");
      return false;
    }
    delay(1000);
    Serial.print(".");
  }
}

void WifiComs::wifidisconnect(){
  WiFi.disconnect();
  WiFi.mode(WIFI_OFF);
}

void WifiComs::ReadSensorsToClient(){
  client.print("{\"sensors\":[");  
  for(byte i = 0 ; i < _sensormanager->GetNumSensors() ; i++){
    client.print(_sensormanager->GetJSONForSensor(i));
  } 
  client.print("]}");
}



void WifiComs::ReadUIDFromFlash(){
  Serial.print("UID : ");
  for(byte i = 0 ; i < UID_LENGTH ; i++){
    UID[i] = EEPROM.read(i);
    Serial.print(UID[i]);
    Serial.print(" ");
  }
  Serial.println("");
}

void WifiComs::GenerateUID(){
  uint32_t seed = 0;
  for(uint16_t i = 0 ; i < 512 ; i++){
    byte b = analogRead(A0);
    seed = seed ^ b<<(i%32);
  }
  Serial.println(seed);
}
