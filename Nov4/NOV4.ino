
const int pushButton = A2;
//const int pushButton2 = A3;
const int redLEDPin = 13;
const int blueLEDPin = 7;

void setup() {
  pinMode(redLEDPin, OUTPUT);
  pinMode(blueLEDPin, OUTPUT);
}

void loop() {

  int buttonState = digitalRead(pushButton);

  if (buttonState == HIGH) {
    digitalWrite(redLEDPin, HIGH);
    digitalWrite(blueLEDPin, HIGH);
    delay(300);
    digitalWrite(blueLEDPin, LOW);
    digitalWrite(redLEDPin, LOW);
    delay(300);
    digitalWrite(blueLEDPin, HIGH);
    delay(50);
    digitalWrite(blueLEDPin, LOW);
    delay(100);
    digitalWrite(redLEDPin, HIGH);
    delay(50);
    digitalWrite(redLEDPin, LOW);
    delay(100);
    digitalWrite(blueLEDPin, HIGH);
    delay (100);
    digitalWrite(blueLEDPin, LOW);
    delay(100);
    digitalWrite(redLEDPin, HIGH);
    delay(100);
    digitalWrite(redLEDPin, LOW);
    delay(300);
    digitalWrite(redLEDPin, HIGH);
    digitalWrite(blueLEDPin, HIGH);
    delay(300);
    digitalWrite(blueLEDPin, LOW);
    digitalWrite(redLEDPin, LOW);
    delay(200);
  }

  allOff();
  delay(1000);
}

void allOff() {
  digitalWrite(redLEDPin, LOW);
  digitalWrite(blueLEDPin, LOW);

}
