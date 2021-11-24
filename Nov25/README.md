**November 25 Assignment Updates**

I really appreciated this week's assignment because it gave me a chance to do the codes we learnt on my own and see how they work. Common erros I made was not changing myport in the code, or running processing and arduino at the same time. These were simple mistakes but just getting from visualization to getting to do it with my own hands helped me understand communication between the two programs better. 

**1. Make something that uses only one sensor on Arduino and makes the ellipse in Processing move on the horizontal axis, in the middle of the screen, and nothing on Arduino is controlled by Processing.** 

I used the same code we were given in class and after setting up the circuit, I ran it. The first time I ran it, the Java screen didn't show up, instead the codes showed at the bottom like this: 

![Screen Shot 2021-11-24 at 9 33 46 PM](https://user-images.githubusercontent.com/89835212/143291978-77641cd1-5914-4fb5-a1eb-76803e22b7ea.png)

I looked online but didn't find any answers. I restarted Processing and then everything worked fine. 


https://user-images.githubusercontent.com/89835212/143292063-f27f6024-f332-46a5-895a-ce1f26286500.mov

Schematic:

![Note 24 Nov 2021](https://user-images.githubusercontent.com/89835212/143295832-a5deb45e-a5df-432c-a8ea-f79bc1bbae0b.jpg)


**2. Make something that controls the LED brightness from Processing**

Something that I enjoyed about Processing was being able to create random values and outputs. So I wanted to try and change the LED brightness at random. For this, I thought if I created a circle at random X positions, I could use the Xposition to contrl the LED brightness. I first tried it using the map function but for some reason the Serial.write function was not taking the value. I did a bit of research online and saw an expample that used constrain instead. So I used constrain instead of map and the code worked. 

Video showing Circles on screen and its position affecting LED Brightness: 

https://user-images.githubusercontent.com/89835212/143304519-e4530202-6ebe-4333-bd36-eef9c8a40e64.mov

Schematic: 

![Note 24 Nov 2021 (3)](https://user-images.githubusercontent.com/89835212/143305626-e8551769-aaad-4870-bb0c-071b967c2bf3.jpg)


**3. Take the gravity wind example (https://github.com/aaronsherwood/introduction_interactive_media/blob/master/processingExamples/gravityExamples/gravityWind/gravityWind.pde) and make it so every time the ball bounces one led lights up and then turns off, and you can control the wind from one analog sensor**

For this example, I used the code we worked with in class too. And it worked fairly easily.

Video for LED lights blinking: 

https://user-images.githubusercontent.com/89835212/143293756-973a63b3-ceda-40d9-b850-7229e7822644.mp4


Video for controlling wind with potentiometer: 

https://user-images.githubusercontent.com/89835212/143293766-74c5f62b-1dad-4dc3-94ce-d0c138b36fef.mp4

Schematic: 

![Note 24 Nov 2021 (2)](https://user-images.githubusercontent.com/89835212/143295818-4a048dbb-13d1-46b4-b48a-f64c2a80e85b.jpg)






