**Sept 23 Assignment updates**

I thought this assignment was going to be relatively simple because I already had the code for my art, I just neeeded to transfer it to a class format. 
I built the basic structure of the class as follows: 
```
Art x;

void setup () {
  size (500, 500); 
  x = new Art();
}

void draw () {
  x.build();
}


```

And then I went on to build my class in the next tab. The simplest version looked like this: 
```
class Art {
  int i = 0;
  float CircSize = i/6; //creating a variable to make the size of circles smaller & appropriate for the canvas

  void build() {
    clear();
    frameRate(5);
    fill(random(255), random(255), random(255));
    circle ( i, random (500), CircSize );
    i=i+1;
}
}
```

In theory, this felt like the same code as the previous assignment (Sept13) but when I run this program, nothing except a black screen showed. I experimented with different values of i and when I increased its initial value to 100, I did have circles that moved at random y coordinates with different colors. However, the x coordinate, and i value, was not changing. And neither was the size of the ball. 

I then realized i++ may have been too small a value to notice when the frameRate was at 5. In the previous program, the for loop meant it happened 500 times within one call of the void draw() so everything happened so many times and created the drawing. In this program, it was only happening once, so I was probably just not niticing anything happening. So I increased the value of i by 50 instead and I brought CircSize to void draw() so that the float could also recieve information that i was changing its value with each run. 
```
class Art {
  int i = 100;
  // float CircSize = i/2; //creating a variable to make the size of circles smaller & appropriate for the canvas

  void build() {
    clear();
    float CircSize = i/6; //creating a variable to make the size of circles smaller & appropriate for the canvas
    frameRate(5);
    fill(random(255), random(255), random(255));
    circle ( i, random (500), CircSize );
    i=i+50;
  }
}

```

Now I had my circles changing colors, increasing in size, and moving along the x coodrinate. I just needed to figure out how to have multiples of them happening at the same time. For this, I revisted a few tutorials from The Coding Train on Arrays and set up an array. However, when I tried to run the following program it said my contructer had not been defined. 

```
Art[] x = new Art[10];


void setup () {
  size (500, 500); 
  for (int i=0;i<x.length; i=i+1) {
    x[i]= new Art(10);
    
}
}
void draw () {
  for (int i=0;i<x.length;i=i+1) {
  x[i].build();
}
}

```

I made a few changes: 

-I looked online for what the error meant, realized I didn't have a contructor and added it. 

-I changed the names for variables so that i wasn't used in multiple places. 

-I changed values to see if that made a difference 

-I commented out the clear statement to see if anything was getting removed. To get the same effect of the previous assignment, I made the background black instead. The circles were being made, however, the canvas lacked the continuos movement that the Sept13 assignment had. 

In the end, I played with some numbers to get it to as close as the previous assignment. The movement is not fluid and ongoing like it was before, but with this, we instead get to witness how the art was built. 

