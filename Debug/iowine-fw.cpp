#include "Energia.h"

#line 1 "C:/git/fw-energia/iowine-fw.ino"
#define LED RED_LED

void setup();
void loop();

#line 3
void setup() {
    pinMode(LED, OUTPUT);
}

void loop() {
    digitalWrite(LED, HIGH);
    delay(100);
    digitalWrite(LED, LOW);
    delay(100);
}



