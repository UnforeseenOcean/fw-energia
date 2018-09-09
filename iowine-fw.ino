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

void blinkLED() {
    digitalWrite(LED, HIGH);
    delay(100);
    digitalWrite(LED, LOW);
    delay(100);
}

void postData() {
    client.stop();

    String data = "{\"device\":\"test\",\"temperature\":21,\"humidity\":21,\"foo\":\"bar\"}";

    if (client.connect("us-central1-iowine-cloud.cloudfunctions.net", 80)) {
        Serial.println("Sending HTTP POST Request...");

        client.println("PUT /pushData HTTP/1.1");
        client.println("Host: us-central1-iowine-cloud.cloudfunctions.net");
        client.println("User-Agent: Energia/1.1");
        client.print("Content-Length: ");

        // calculate the length of the sensor reading in bytes:
        // 8 bytes for "sensor1," + number of digits of the data:
        int thisLength = data.length();
        client.println(thisLength);

        // last pieces of the HTTP PUT request:
        client.println("Accept: text/plain");
        client.println("Content-Type: application/json");
        client.println("Connection: close");
        client.println();

        client.print(data);
    } else {
        Serial.println("Failed to send HTTP POST Request");
    }
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
    blinkLED();
    postData();
    delay(5000);
}

