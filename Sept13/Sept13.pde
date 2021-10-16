void setup() {
  size (500, 500);

}
void MakeEllipse () {
  ;
  noStroke();
  fill(random(255), random(255), random(255));

  ellipse(150, 150, width, height); 
  height=height-50;
  width=width-50;
  println ("height1 =" + "height");
  
}

void Face () {
  ; 
  stroke(0);
  fill(240, 240, 0);
  ellipse(400, 400, 70, 105); 
  fill (0, 0, 0);
  circle(375, 375, 10);
  line (360, 390, 363, 390);
  line(360, 390, 365, 385);
  noFill();
}

void draw() {
    frameRate(5);
    MakeEllipse();
  Face ();
  if (height > 0) {
    noFill(); 
    stroke(0);
    arc(390, 440, 50, 50, radians (220), radians(320)); //arc for sad face
  } else  {
    noFill(); 
    stroke(0);
    arc(380, 400, 50, 50, radians (10), radians(120)); //arc for happy face
     println ("height2 =" + "height");
  }
  
 // while (height>350 && height <0) {
 //   height = height - 50; 
    
  }
  
    
