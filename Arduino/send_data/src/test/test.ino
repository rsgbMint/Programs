#include <Arduino.h>

void setup() {
	pinMode(A3, INPUT);
	Serial.begin(9600);
}

void loop() {
	  double s1 = analogRead(A3);
		/* s1 = s1*(5/1023); */
	  Serial.println(s1);
	  delay(100);
}
