const int redLEDPin = 6;
const int blueLEDPin = 7;

void setup() {
  pinMode(redLEDPin, OUTPUT);
  pinMode(blueLEDPin, INPUT);
  Serial.begin(9600);
}

void loop() {

  int LDRvalue = analogRead(A1);
  int Blueswitch = digitalRead(blueLEDPin);

  if  (Blueswitch == HIGH) {
    digitalWrite(redLEDPin, HIGH);
    digitalWrite(blueLEDPin, HIGH);
    delay(300);
    digitalWrite(blueLEDPin, LOW);
    digitalWrite(redLEDPin, LOW);
    delay(300);
    digitalWrite(blueLEDPin, HIGH);
    delay(300);
    digitalWrite(redLEDPin, HIGH);
    delay(300);
    digitalWrite(redLEDPin, LOW);
    delay(300);


  } else  {
    digitalWrite(blueLEDPin, HIGH);
    digitalWrite(redLEDPin, HIGH);
    delay(LDRvalue);
    digitalWrite(blueLEDPin, LOW);
    digitalWrite(redLEDPin, LOW);
    delay(LDRvalue);

  }
}
