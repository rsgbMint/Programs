#include <Arduino.h>

void setup() {
  Serial.begin(9600);
}

void loop() {
  int s1 = analogRead(A3);
  Serial.println(s1);
  delay(100);
}