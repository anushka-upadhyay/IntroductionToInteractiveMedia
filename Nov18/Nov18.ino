
#include <Servo.h>

Servo myservo;

int servoPos = 0;
int spkrPin = 5;

void setup() {
  Serial.begin(9600);
  myservo.attach(12);
  pinMode(7, INPUT);

}

void loop() {
  int LDRValue = analogRead(A0);
  Serial.println(LDRValue);
  int pitch = map(LDRValue, 50, 600, 120, 1500);
  int Bellswitch = digitalRead(7);

  if (Bellswitch == HIGH) {
    tone(spkrPin, pitch);
    delay(1);
  } else {
    noTone (spkrPin);
  }

for (servoPos = 0; servoPos <= 180; servoPos += 10) {
  myservo.write(servoPos);
  delay(15);
}
for (servoPos = 180; servoPos >= 0; servoPos -= 10) {
  myservo.write(servoPos);
  delay(15);
}
}
