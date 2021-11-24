const int LEDpin = 3;

void setup () {
  
  Serial.begin(9600);
  pinMode (LEDpin, OUTPUT);
  
}


void loop () {

  int LEDbrightness; 
  if (Serial.available()) { 
    LEDbrightness = Serial.read();
    analogWrite (LEDpin, LEDbrightness);
    
  }
}
