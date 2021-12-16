import processing.serial.*;
import ddf.minim.*;

Serial myPort;
String inString;
Minim minim;
AudioPlayer player;

float xoff = 0.1;


void setup() {
  size (2000, 1000);
  //printArray(Serial.list());

  myPort = new Serial(this, Serial.list()[6], 9600);
  myPort.clear(); 
  inString = myPort.readStringUntil('\n');
  inString = null; 
  minim = new Minim(this);
  player = minim.loadFile("Anx.mp3");
}      

void draw() {
  while (myPort.available() > 0) {
    inString = myPort.readStringUntil('\n');

    if (inString != null) {
      inString = inString.trim(); 
      if (inString.length() > 0) {
        println(inString); 
        if (inString.equals("ears")) {
          if (player.isPlaying() == false) {
            player.play();
          }
        } else if (inString.equals("noears")) {
          if (player.isPlaying() == true) {
            player.pause();
            player.rewind();
          }
        } else if (inString.equals("eyes")) {
          background(50);
          xoff = xoff + .01;
          fill (random(0, 255));
          float n = noise(xoff) * width;
          float circxPos = random(n);
          float circyPos = random (n);
          float circSize = random (0, height);
          circle (circxPos, circyPos, circSize);
        }
      }
    }
  }
}
