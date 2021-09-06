void setup() {
  size (500, 500);
}
int redvalue=0;
int bluevalue=255;
int greenvalue=round(random(255));
void draw() {

  noStroke();

  fill(redvalue, greenvalue, bluevalue);
  rect(0, 0, 500, 500);
  {
    redvalue=redvalue+1;
    bluevalue=bluevalue-1;
  }

  point (mouseX, mouseY);
  println("mouse coordinates = " + mouseX +"," + mouseY);

  fill(255, 255, 255);
  ellipse(190, 115, 85, 55);
  ellipse(350, 140, 95, 65);
  fill(0, 0, 0);
  circle(185, 119, 30);
  circle(346, 155, 30);
  fill(255, 255, 255);
  circle(178, 115, 3);
  circle(335, 152, 3);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  ellipse(215, 250, 80, 90);
  noFill();
  arc(290, 89, 60, 60, HALF_PI, PI);
  arc(310, 80, 60, 60, HALF_PI, PI);
  arc(330, 73, 60, 60, HALF_PI, PI);
  arc(360, 70, 60, 60, HALF_PI, PI);
  arc(390, 75, 60, 60, HALF_PI, PI);
  arc(415, 85, 60, 60, HALF_PI, PI);
  line(220, 169, 215, 180);
  line(215, 180, 224, 180);
  arc(170, 100, 80, 80, PI+QUARTER_PI, TWO_PI);
  fill(90, 00, 00);
  ellipse(160, 180, 40, 20);
  ellipse(270, 180, 40, 20);
  noFill();
  arc(387,200,100,100,0,radians(90));
  arc(387,195,50,50,0,radians(90));
  int earred=round(random(255));
  int eargreen=round(random(255));
  int earblue=round(random(255));
  fill(earred,eargreen,earblue);
  circle(380,240,5);
  line(380,240,380,340);
   circle(380,340,5);
   circle(375,340,5);
   circle(385,340,5);
   circle(377,345,5);
   circle(383,345,5);
   circle(380,350,5);


  
} 
