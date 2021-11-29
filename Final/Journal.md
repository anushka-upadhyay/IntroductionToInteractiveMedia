**Finalized concept for the project**

I have decided that I will make a simplified version of the installation that I shared in the "Ideas.md" file. The installation will attempt to show how mental illness physically inhabits my body. There will be a small 2D cloth outline of a body. There will be buttons that represent each part of the body I experience pain in. The users/audience can press buttons as much as the want/whenever they want and this would be connected to a reaction specific to that part of the body. 

Here is a rough sketch of the installation: 

![Note 29 Nov 2021](https://user-images.githubusercontent.com/89835212/143825878-b63d84ad-02b4-48eb-b4ca-c8246452f87a.jpg)

Eyes: 
When the buton is pressed a screen with moving circles/swirls will come up on the Processing Java Window. 

Ears: 
When the button is pressed a high-pitched sound will play on the headphones that the user will be wearing. 

Chest: 
When the button is pressed the servo motor will rotate. The motor will have needles with red paint or markers attached to it so that with each rotation, it marks the cloth in red. 

**Description of Arduino program**

The Arduino program will call on each program (eyes, ears, chest) when the button is pressed. The programs for ears and chest will be on Arduino but the program for the eyes will be on Processing so it will be sending the signal that the eyes button is pressed to Processing. 

**Description of Processing program** 

The Processing program will have a home screen that explains the installation at all times. This screen will change when the eyes button is pressed, it recieves this signal from Arduino and the screen will instead display a visualization/art peice instead. 

If time permits, I will have descriptions of each (Eyes, ears, chest) appear on Processing when the signal that each button is pressed is received from Arduino. 

**The riskiest, most complicated, or most unknown part of project**

The most complicated part of the project is building the hardware. I had initially thought of building a live size cloth outline of the body to add more "humanness" to the installation. However, after recieving feedback that I don't have enough training to do proper contruction , I have decided to downscale the project and make a smaller/simpler version of the project. I still however, need to experiment with each of the components, especially the servo motor to ensure that it moves the way I want it to. 


