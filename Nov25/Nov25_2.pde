import processing.serial.*; 

Serial arduino; 
void setup () {
  size (500, 500);
  frameRate(1);
  printArray(Serial.list());
  arduino = new Serial (this, Serial.list()[6], 9600);

  arduino.bufferUntil('\n');
}

void draw () {

  int CircXpos = round(random(500));
  circle (width/2, CircXpos, height/2);
  arduino.write(constrain(CircXpos, 0, 255));
}
