**Midterm Updates**

For the midterm, I had initially decided I want to try to create a game like "Match the Tiles". However, after the IM showcase, having been in the same table as a two player Pong Game, I wanted to see if I could create a single player pong game. This came from the idea that we were waiting around for people to come interact with the games for most of the showcase, and I couldnt help but wanting to be able to play all the games on my own. 

First I created the Pong game on it's own. I looked at a few examples online to see what would make the ball shift angles depending on how it hits the bar because I couldn't figure it out. Once I figured it out, I made sure other aspects of the game were working: the bar would get shorter if the player was winning, music played in the background, the ball bouced off of all other sides than the one with the paddle and that the score is being counted throughout. This was fairly simple and intuitive after having looked at the other examples. Then, in order to add the intro screen and the end game screen, I wanted to use classes to help organize my work. This is what my code was 

```

boolean intro = true;
boolean start = false;
boolean miss = false;

float xPos = 50;
float yPos = 50;
float speedX = 5;
float speedY = 5;
float score; 

int bar;
int barSize = 150;


void setup() {
  size(500, 500);
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
    text("Press the Spacebar to start", width/3, height/4 +30);

    //bar = 20;
    //ellipse(xPos, yPos, bar, bar);
    //rect(width-30, mouseY-barSize/2, 10, barSize);
  }

  if (key==' ') {
    start=true;
  }

  if (start==true) {
    startgame();
  }
}

class pong {

  int Bar = 20;
  float x, y, xspeed, yspeed, barsize; 

  pong (float xPos, float yPos, float speedX, float speedY, float barSize) {
    x = xPos;
    y = yPos; 
    xspeed = speedX; 
    yspeed = speedY;
    barsize = barSize; 


    ellipse(xPos, yPos, bar, bar);
    rect(width-30, mouseY-barSize/2, 10, barSize);

    xPos = xPos + speedX;
    yPos = yPos + speedY;
  }

  // if ball hits bar, change X direction
  void barhit() {
    if ( xPos > width-30 && xPos < width -20 && yPos > mouseY-barSize/2 && yPos < mouseY+barSize/2 ) {
      speedX = speedX * -1;
      xPos = xPos + speedX;
      barSize = barSize-10;
      barSize = constrain(barSize, 10, 150);
    }
  }

  // if ball hits wall, change direction of X
  void wallhit() {
    if (xPos < 1) {
      speedX = speedX * -1.1;
      xPos = xPos + speedX;
    }
  }

  void ceilinghit () {
    // if ball hits up or down, change direction of Y   
    if ( yPos > height || yPos < 0 ) {
      speedY = speedY * -1;
      yPos = yPos + speedY;
    }
  }

  void miss() {

    // restart if you lose
    if (xPos > width) { 
      start = false;
      miss = true;
    }
    if (miss == true) {
      endgame();
    }
  }

  void score() {
    if (miss==false) {
      score++;
    } else if (miss==true) {
      score=score+0;
    }
  }
}
void endgame () {
  background(255);
  textSize(20);
  fill (255);
  text("You lost 🙁", width/3, height/4);
  text("Your score is"+ score, width/3, height/4 + 30);
  text("Press the R to restart", width/3, height/4 +50);
  if (key=='r') {
    start=false;
    miss=false;
    score=0;
  }
}

pong Pong = new pong();

void startgame() {
  Pong.barhit();
  Pong.wallhit();
  Pong.ceilinghit();
  Pong.miss();
  Pong.score();
}

```

Once I organized my code, and tried to run it, it kept giving me the error that the constructor was not defined. I tried redefining it, I tried shifting things, I looked online for different solutions but nothing worked. I asked a friend who knew coding for help and they could not figure it out either. So then, I redid my code to work without classes and added sound. The game then worked, but when it came to restarting the game, it went back to showing that theplayer had already lost. I knew I was missing something that reset everything, but I couldn't figure out what it was. My problem was that it did go back to the home page, however when I pressed "S" to play the game again, it took me straight to the endpage instead of the game. I tried calling the intro function at the point where the game had to restart but that did not work either. I thought maybe I'd gotten some of the syntax wrong so I checked that, but everything seemed to be correct. I moved positions of where I called functions, but that did not work either. I'd been staring at the code for almost an hour and I couldn't figure it out. 

I tried adding multiple checks that made sure when the player lost, that was checked, and then send to the intro function again. 

```

 if (miss == true) {
    background(255);
    textSize(20);
    fill (0);
    text("You lost :(", width/3, height/4);
    text("Your score is "+ score, width/3, height/4 + 30);
    text("Press the R to restart", width/3, height/4 +50);
  }
    if (key=='r') {
      start = false;
      miss = false;
      score = 0;
      if (start==false) {
      intro ();
      }
    }
   
    ```
    
    Instead I tried addid a restart fucntion: 
    
    ```
    void restart () {
  if (key=='r') {
    start = false;
    miss = false;
    score = 0;
    intro();
    }
  }
  
  ```
  
  However, this did not work either. I then realized, in a moment of frustation when I was just punching the keyboard, that the end page took me to intro no matter what key I pressed, it didn't need to be "r" like I had code it. I figured, my problem hence, may come from the fact that the program is not reading my "r" for restart at all. 




