**Sept 13 Assignment Updates**

I missed class because I was sick this week, so walking into this assignment was a bit terrifying. Though I had watched the zoom recording, and felt like I understood the general idea, seeing people's work on Discord intimidated me because I couldn't recognize what code they used for it like in the previous assignment. 

My idea for this assignment was to have a stick figure or face that was sad in one corner and have a rainbow of colors come from the ohter and when the rainbow hits the face it would turn happy. I tried the following code to make the rainbow.

void setup() {
  size (500, 500);
}
void MakeEllipse () {
  ;
  noStroke();
  fill(random(255), random(255), random(255));
 // for (width < 300; height < 300);
  { 
    ellipse(450, 500, width, height); 
    int Circ1W=width-100; 
    int Circ1H=height-100;
    int Circ2W=width-200; 
    int Circ2H=height-200;
    int Circ3W=width-300; 
    int Circ3H=height-300;
    int Circ4W=width-400; 
    int Circ4H=height-400;
    fill(random(255), random(255), random(255));
    ellipse(450, 500, Circ1W, Circ1H);
    
    fill(random(255), random(255), random(255));
    ellipse(450, 500, Circ2W, Circ2H);
    
    fill(random(255), random(255), random(255));
    ellipse(450, 500, Circ3W, Circ3H); 
    
    fill(random(255), random(255), random(255));
    ellipse(450, 500, Circ4W, Circ4H);
    
  //  fill(random(255), random(255), random(255));
    //ellipse(450, 500, Circ2W, Circ2H);


    height=height+50;
    width=width+50;
    //fill(random(255), random(255), random(255));
  }
}
void draw() {
  frameRate(2);
  MakeEllipse();
}


