void setup () { 
  size (500, 500);
}

void draw() {
  clear();
  frameRate(5);
  for (int i=0; i<500; i= i +1) {
    float CircSize = i/6; //creating a variable to make the size of circles smaller & appropriate for the canvas
    fill(random(255), random(255), random(255));
    circle ( i, random (500), CircSize );
  }
}
