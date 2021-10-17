//Art x;
Art[] x = new Art[10];


void setup () {
  size (500, 500); 
  background(0);
  frameRate(20);
  //  x = new Art();
  for (int i=0; i<x.length; i++) {
    x [i]= new Art();
  }
}

void draw () {
  // x.build();
  for (int i=0; i<x.length; i=i+1) {
    x[i].build();
  }
}
