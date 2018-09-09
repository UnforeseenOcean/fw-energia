#define LED RED_LED

#include <SPI.h>
#include <WiFi.h>

char ssid[] = "iowine-foo";
char pass[] = "iowine-bar";

WiFiClient client;

/// https://github.com/energia/Energia/blob/master/libraries/SimplelinkWifi/examples/ThingSpeakClient/ThingSpeakClient.ino
void printWifiStatus() {
    Serial.println("SSID: " + String(WiFi.SSID()));
    Serial.print("IP Address: ");
    Serial.println(WiFi.localIP());
    Serial.print("RSSI: ");
    Serial.println(WiFi.RSSI());
}
void startWiFi() {
    /* Kill existing connection */
    WiFi.disconnect();
    client.stop();
    /* Start new connection */
    WiFi.begin(ssid, pass);
    /* Wait for WiFi */
    while (WiFi.localIP() == INADDR_NONE) {}
    printWifiStatus();
}

void setup() {
    /* Serial */
    Serial.begin(115200);
    /* Debug pins */
    pinMode(LED, OUTPUT);
    /* WiFi */
    startWiFi();
}

void loop() {
    digitalWrite(LED, HIGH);
    delay(100);
    digitalWrite(LED, LOW);
    delay(100);
}

