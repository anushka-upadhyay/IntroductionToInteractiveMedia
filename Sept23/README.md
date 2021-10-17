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

In theory, this felt like the same code as the previous assignment (Sept13) but when I run this program, nothing except a black screen showed. I experimented with different values of i and when I increased its initial value to 100, I did have circles that moved at random y coordinates with different colors. However, the x coordinate, and i value, was not changing. 
