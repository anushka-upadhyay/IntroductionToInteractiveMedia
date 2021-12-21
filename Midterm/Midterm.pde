import ddf.minim.*;

Minim minim;
AudioPlayer player;

boolean intro = true;
boolean start = false;
boolean miss = false;

float xPos = 50;
float yPos = 50;
float speedX = 5;
float speedY = 5;
float score; 

int barSize = 150;

void setup() {
  size(500, 500);
  reset();
  minim = new Minim(this);
  player = minim.loadFile("Hej.mp3");
  
}

void draw() { 
  background(0);
  fill(255);
  intro();
}

void intro() {
  if (intro==true & start==false) {
    textSize(20);
    fill (255);
    text("Single Player Pong", width/3, height/4);
    text("Press the s to start", width/3, height/4 +30);
  }
  if (key=='s') {
    start=true;
  }
  if (start==true) {
    startgame();
  }
}

void startgame() {

  circle(xPos, yPos, 20);
  rect(width-30, mouseY-barSize/2, 10, barSize);

  xPos = xPos + speedX;
  yPos = yPos + speedY;

  // if ball hits bar, change X direction
  if ( xPos > width-30 && xPos < width -20 && yPos > mouseY-barSize/2 && yPos < mouseY+barSize/2 ) {
    speedX = speedX * -1;
    xPos = xPos + speedX;
    barSize = barSize-10;
    barSize = constrain(barSize, 10, 150);
    score = score + 1;
    player.play();
  }

  // if ball hits wall, change direction of X
  if (xPos < 1) {
    speedX = speedX * -1.1;
    xPos = xPos + speedX;
  }

  // if ball hits up or down, change direction of Y   
  if ( yPos > height || yPos < 0 ) {
    speedY = speedY * -1;
    yPos = yPos + speedY;
  }

  if (xPos > width) { 
    start = false;
    miss = true;
    player.pause();
    player.rewind();
  }

  // restart if you lose
  if (miss == true) {
    background(255);
    textSize(20);
    fill (0);
    text("You lost :(", width/3, height/4);
    text("Your score is "+ score, width/3, height/4 + 30);
    text("Press any key to restart", width/3, height/4 +50);
  }
}

void keyPressed() {
  reset();
}

void reset() {
  xPos = 50;
  yPos = 50;
  speedX = 5;
  speedY = 5;
  score = 0;
  start = false;
  miss = false;
}
