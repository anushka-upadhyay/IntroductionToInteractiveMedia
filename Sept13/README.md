**Sept 13 Assignment Updates**

I missed class because I was sick this week, so walking into this assignment was a bit terrifying. Though I had watched the zoom recording, and felt like I understood the general idea, seeing people's work on Discord intimidated me because I couldn't recognize what code they used for it like in the previous assignment. 

I came back to this assignment during Fall Break. 

My idea for this assignment was to have a stick figure or face that was sad in one corner and have a rainbow of colors come from the ohter and when the rainbow hits the face it would turn happy. I tried the following code to make the rainbow.

```

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

```
This process in general was very tiring because I had to make each ellipse and create variables for each of them. I tried the loop function for this but because each ellipse was bigger than the last one it would cover it. So I had to draw new ones each time. However, I then realized I could just reverse the code and instead of increasing the circles, decrease them and not clear the background each time the loop runs and it should potentially work. 

Then I also realized I was using a lot of unnecssary variable, or crreating them and not using them at all. So I cut everything down until it became this: 

```
void MakeEllipse () {
  ;
  noStroke();
  fill(random(255), random(255), random(255));

  ellipse(25, 25, width, height); 
  height=height-50;
  width=width-50;
}
```
This code didn't do exactly what I had intended it to do, but I realized this may be the only way to show the rainbow effect while also having the colors reach the face. You understand this better when you ru the code. The rainbow runs in the opposite direction, bounces off the corner and then moves in the direction of the face. I wasn't quite sure why it did this, but it worked for the purpose of my artwork. 

Then through trial and error, I made my face, figuring out the point for the arc of the sad face and happy face

```
void Face () {
  ; 
  fill(240,240,0);
    ellipse(400, 400, 70, 105); 
    fill (0,0,0);
    circle(375,375,10);
    line (360,390,363,390);
    line(360,390,365,385);
    noFill(); 
 arc(390, 440, 50, 50, radians (220), radians(320)); //arc for happy face
 //arc(380, 400, 50, 50, radians (10), radians(120)); //arc for sad face
}
```

Then I tried running the program with both functions for the rainbow and face. To my surprise, when I added the eclipse function the nose and mouth on the face dissapeared and it came back when I commented out the eclipse function: 

```
void draw() {
  frameRate(2);
  // MakeEllipse();
  Face ();
  
}

```

I realized this was because of the noStroke() function in my MakeEllipse () function. I tried switching the positions of the functions in void draw () but the facial features only showed up for a second and dissapeared once the MakeEllipse () function was called. I could have just removed the noStroke() function but I liked how it made my rainbow look. Then I figured if there is a noStroke(), there must be a stroke () and with a little help from Reference that problem was solved. 

Now I needed to add the loop and change in face. 
I just couldn't rap my head around this because I was trying to change the face when the height reached at a certain value but the program did not work, the "for" and "while" command kept giving me errors and I didn't know what was wrong. Then I realized I could make this work wih a conditional instead so I ried it with an if statement. 
```
void draw() {
  frameRate(2);
  MakeEllipse();
  Face ();
  if (height > 0) {
    noFill(); 
    stroke(0);
    arc(390, 440, 50, 50, radians (220), radians(320)); //arc for sad face
  } else {
    noFill(); 
    stroke(0);
    arc(380, 400, 50, 50, radians (10), radians(120)); //arc for happy face
  }
```
With this code, the face was sad when the rainbow was moving away from it, and the face way happy when the rainbow was moving towards it. Now I wanted to figure out how to make the rainbow move opposite from the face, and continue move between towards and away from the face, so that the face changed from happy to sad continues when it did so. The rainbow swiched direction when the height become 0 and because the math would look something like height = 0-(-1) = 0+ 1 = 1 so the height increased once it hit zero. (This is what I'm assuming) Now the question was how do I do it when ehight reaches 500 or the other corner of the canvas. 

Another dillemma of sorts was that my "for" loop didn't seem to be doing anything. 

```
void draw() {
  for (int i=0; i<10; i=i+1); 
  {
    frameRate(5);
    MakeEllipse();
  }
  Face ();
  if (height > 0) {
    noFill(); 
    stroke(0);
    arc(390, 440, 50, 50, radians (220), radians(320)); //arc for sad face
  } else {
    noFill(); 
    stroke(0);
    arc(380, 400, 50, 50, radians (10), radians(120)); //arc for happy face
  }
```

Here I'd put the MakeEllipse () function in a for () ieration hoping that the rainbow would stop after 10 turns but it kept going and I dont understand why. 

