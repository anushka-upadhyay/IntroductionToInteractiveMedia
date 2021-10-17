class Art {
  int a;
  float CircSize;

  Art () {
    a=0;
  }


  void build() {
    //clear();
    CircSize = a/6;
    fill(random(255), random(255), random(255));
    circle ( a, random (500), CircSize );
    a=a+5;
  }
}
