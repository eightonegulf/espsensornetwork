#include <ESP8266WiFi.h>
//https://github.com/boseji/rBASE64
#include <rBase64.h>

#define WIFI_NAME "esp8266wifi"
#define WIFI_PASSWORD "3HxWVZQ3O"
#define AP_HIDDEN true
#define MAX_TIMEOUT 5000
#define UID_LENGTH 8
#define BASE64_MAX_SIZE (RBASE64_ENC_SIZECALC(UID_LENGTH))

IPAddress local_ip(10,0,0,1);
IPAddress gateway(10,0,0,1);
IPAddress subnet(255,0,0,0);

WiFiServer server(80);

void setup() {
  ESP.eraseConfig();
  Serial.begin(115200);

  WiFi.softAPConfig(local_ip, gateway, subnet);
  WiFi.mode(WIFI_AP);
  WiFi.softAP(WIFI_NAME, WIFI_PASSWORD, 3, AP_HIDDEN, 4);
  Serial.print("Soft-AP IP address = ");
  Serial.println(WiFi.softAPIP());
  server.begin();
}


void loop() {
  StatUpdate();

  WiFiClient client = server.available(); 
  if(client){
    HandleClient(client);
  }
  delay(1);
}

unsigned long lastStatUpdate = 0;
void StatUpdate(){
  if(lastStatUpdate + 60000 < millis()){
    Serial.print("{\"apstatus\":{");
    Serial.print("\"currentwificlients\":");
    Serial.print( WiFi.softAPgetStationNum() );
    Serial.print(",\"uptimeseconds\":");
    Serial.print(millis() / 1000);
    Serial.println("}}");
    
    lastStatUpdate = millis();
  }
}


char uid[UID_LENGTH];
char uidb64[BASE64_MAX_SIZE];

void HandleClient(WiFiClient wclient){
  String rawData = "";
  bool success = true;  
  unsigned long clientConnectTimeMS = millis();
  byte uidindex = 0;
  
  while(wclient.connected()){
    if(clientConnectTimeMS + MAX_TIMEOUT < millis()){  //Timeout client after x seconds
      wclient.stop();
      success = false;
    }else{
      while(wclient.available()){
        char c = wclient.read();

        if(uidindex < UID_LENGTH){
          uid[uidindex++] = c;
        }else{          
          if(c == 0){
            wclient.stop();
          }else{
            rawData += c;
          }
        }
      }
    }
  }

  if(success){
    Serial.print("{\"message\":{\"uid\":\"");
    rbase64_encode(uidb64, uid, UID_LENGTH);
    for(byte i = 0 ; i < BASE64_MAX_SIZE ; i++){
      Serial.print(uidb64[i]);
    }
    Serial.print("\", \"message\":");
    Serial.print(rawData);
    Serial.println("}}");
  }else{
    Serial.print("{\"timeout\":{\"uid\":\"");
    rbase64_encode(uidb64, uid, UID_LENGTH);
    for(byte i = 0 ; i < BASE64_MAX_SIZE ; i++){
      Serial.print(uidb64[i]);
    }
    Serial.println("\"} }");
  }
}
