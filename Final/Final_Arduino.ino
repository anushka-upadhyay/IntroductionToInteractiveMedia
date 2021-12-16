#include <Servo.h>
Servo myservo;

const int chestswitch = 8;
const int earswitch = 4;
const int eyeswitch = 12;

int chestButtonState = 0;
int earButtonState = 0;
int eyeButtonState = 0;
int servopos = 0;


void setup() {
  myservo.attach(7);
  pinMode(chestswitch, INPUT);
  pinMode(earswitch, INPUT);
  pinMode(eyeswitch, INPUT);
  Serial.begin(9600);

}

void loop() {

  //Chest: Makes the needle attached to servo motor move
  chestButtonState = digitalRead(chestswitch);

  if (chestButtonState == HIGH) {
    for (servopos = 0; servopos <= 180; servopos += 10) {
    }
    myservo.write(servopos);
    delay(15);

    for (servopos = 180; servopos >= 0; servopos -= 10) {
      myservo.write(servopos);
      delay(15);
    }
  }


  //Ear: goes to processing to play a sound file
  earButtonState = digitalRead(earswitch);

  if (earButtonState == HIGH) {
    Serial.println("ears");
  }

  if (earButtonState == LOW) {
    Serial.println("noears");
  }

  //Eye: goes to processing to show moving image
  eyeButtonState = digitalRead(eyeswitch);

  if (eyeButtonState == HIGH) {
    Serial.println("eyes");
  }

  if (eyeButtonState == LOW) {
    Serial.println("noeyes");

  }


}
