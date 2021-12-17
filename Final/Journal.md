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

The most complicated part of the project is building the hardware. I had initially thought of building a live size cloth outline of the body to add more "humanness" to the installation. However, after recieving feedback that I don't have enough training to do proper contruction , I have decided to downscale the project and make a smaller/simpler version of the project. I have not decided what size the cloth outline of the body will be yet, and it will depend on what materials fit best. I still however, need to experiment with each of the components, especially the servo motor to ensure that it moves the way I want it to. 

**Building the Project** 

I wanted to be as efficient and effective in building this project so that if any problem would arise, I knew exactly where each problem was coming from. So I divided ym work into hardware and software components, and within each, I worked on the eyes, ears and chest, one at a time. 

**Focusing on Hardware components:**

I started with the basic structure of the circuits. I attached the three buttons to the breadboard, and made sure they worked using the DigitalRead Example on Arduino. I waned to start with this because the layout of the buttons would be what the users would be interacting with at the showcase and I wanted to make sure the buttons were organized in a way that allowed users to press one, or multiple buttons with ease. 

The next big part of the project was the the outline of the body itself. My vision was to create an outline of the full body in white clothe and have it stand upright on a table using a cardboard stand that looked like a frame. Here is a small sketch:

![Note 17 Dec 2021](https://user-images.githubusercontent.com/89835212/146522283-7e7bfa90-0247-4f63-a104-337abd96aac0.jpg)

Image description: The cloth outline is held by a cardboard frame. A second cardboard stand is attached to a servo motor that is in front of the body outline and will move in a way that "pokes" the chest. 

Since I was creating a table top project, I decided to make the body outline smaller, to about one feet, however, while I was making it, I realized that the one parts I am showing are inthe upper half of the body, and if I were to create the entire outline, it wouldn't necessarily be useful and it would leave me lesser space to work with for the needles and servo motor. So instead, I created a cloth outline of the upper body until the chest. I wanted to create a cardboaard stand based on how the needle and servo motor worked so I created that next. 

When attaching the needle to the servo motor, I first did it perpendicular on the moving arm of the motor, because this was the most secure way to do it. I used the Servo sweeping example on Arduino to see how the needle would move, and much like it expected, this did not work. This made the needle move in circles around the chest, but I needed it to move to and from, forward and backwards. So instead, I attached the needle at perpendicular angle, but facing away from the motor, so that when the motor moved, the needle would move back and forth. This way of attaching the needle was less secure, so I used tape and thread to secure it as much as possible. I had the option to use a glue gun, but I did not want to make anything that could not be taken down later. 

![IMG_0590](https://user-images.githubusercontent.com/89835212/146523932-22922708-7d97-462e-97c6-011db328806d.JPG)

My initial idea had been to put red paint or ink on the needle, and when the needle poked the cloth it would leave a mark that would spread more, almost as if to metaphorically represent bleeding. However, as I was building the needle, I realized 

1. It may be too gory, there was already a needle prodding the outline of a chest and it may cause people to be upset. 

2. I didn't actually have any mechanism to make sure the pain or ink would not dry out over time. And I did not want to replace the needle with a marker because that would mean shifting the size of the body to scale and I wanted to create a project as compact as possible. 

I decided I wouldn't use the paint component, Instead, I would just allow people to view the needle prodding the chest. This simplified my project in a massive way. I had initially chosen cloth as the material for the body outline because first, it was a porous material and could absorb the paint/ink and second, it was a flexible material, and if I wanted to add the element of a knee rocking or fingers fidgeting, I would easily be able to do so with a motor hidden behind the cloth. However, now, I had downscaled to the upper body, and with the removal of paint, I didn't have to use a material that was as unstable as cloth. I decided I would draw the outline of the body on cardboard, and then, instead of needing it to stand, I could simply let it lay flat on the table. Then I could also adjust the motor to move at an angle that didnt require a stand, but simpley to be placed on top of the outline of the body. This completed the chest component. 

![IMG_0591](https://user-images.githubusercontent.com/89835212/146526099-3c5caeae-8918-4256-843b-21dd856a3880.JPG)

Image description: This is the outline of the body on the cardboard that will lay on the table. The servo with the needle is attached and I have colored the areas (eyes, chest, ears) in conjuction with the color of the buttons that will control each component. 

Next, moving to the ears component. I wanted to create a sountrack that played on Processing that sounded like my experience of anxiety. I have social anxeity, so I often feel anxious when I am in a crowded space or have recently been there. I used GarageBand to layer the sounds and tie them in a cohesive manner. Following are the components I added to the sound track: 

1. The sound of a crowd of people murmuring. I downloaded the sound effect from Youtube. 

2. The sound of heavy breathing. I recorded this myself. 

3. The sound of high pitched ringing of the ears. I downloaded the sound effect from Youtube. 

4. The sound of a conversation with my mother. I recorded this imaging the things I would say to mother if she were with me in the room. 

Once I layered them and edited it, the track was about a minute long. Now, everything else I needed to prepare was on Arduino and Processing. 


**Focusing on Software components:**

I started with a simple program for the visualization in the eyes component. I wanted circles of random sizes to appear at random points of the screen. Initially, I had wanted it to be colorful, but the more I thought about it, the more I wanted it to be in the greyscale because the colors I see during an axiety attack aren't always vivid and clear, everything is blurry so I felt like the greyscale would represent it more accurately. I used the concept of the Perlin noise to ensure the movement felt a bit smoother, and the program felt quite easy to make because it was similar to the artwork I had made previously. 

With that, all three components were ready and just needed to be put in Arduino and Processing together, and with the switches that controlled each of them. 

I first created a new program on Arduino where I put all the necessary code for the switches to work. The program checked if the siwtches were HIGH, and if they were, they sent a code to Processing for the ears and eyes. I also created a similar program on Processing where it was ready to recieve the code from Arduino that the switch for eyes and ears was pressed. Once this basic structure was done, I inserted the code for the servo motor on Arduino, connected it with yellow switch and made sure it work. 

Then, I moved onto created a program on Processing for the audio to play. For this, I used the SoundFile function that we had learned in class. Once I knew the program worked, I transferred it to the structural program I had created earlier in Processing. When I did this, the soundtrack still played but it was covered in a static like sound and I could not hear anything from the actual sound. I had created a command for the sound to stop when the switch is not pressed, but that did not work either, and once the switch was pressed, the static sound continued playing. I tried looking online what could have caused the problem and tried debugging the program but nothing worked. I tried rearranging, making sure the wires were fixed, making sure there were no delays, but nothing solved the problem. I reached out to a friend who is a CS major and they suggested I try using minim instead of SoundFile as a function, because it was better at playing tracks. They taught me what the code looked like and helped me debug my program until the soundfile was no longer giving off the static sound. This whole process took about an hour, from when the static started playing to when I figured out how to use minim and make my audiofile work again. In terms of the audio turning off, I created a for loop within the loop where Processing recieved a code for each component where I tested if the string variable I had recieved was still true or false, and depending on that started or stopped the audiofile. 

I then used the same double loop process for when I inserted the visualization program into the main structural program in Processing for the eyes component, and everything worked fine. 

**User Experience** 

I was not able to do a user experience in person because I was not feeling well, but I asked a friend of mine to do it over Zoom where I showed her different components of my work and she asked me to press certain buttons, had questions about each component and gave me feedback. I do not have a video of it because she didn't want to be recorded but this was her feedback: 

1. The sound is very intense and could be triggering. 

2. Could I touch the needle? 

3. When I pressed all 3 buttons the vizualization on Processing slowed down, is it supposed to do that? 

4. I expalained how the project worked so she knew to tell me to press the buttons and what to look out for, but otherwise, would I have instructions for the users during the showcase? Otherwise it is quite confusing. 

In response to this feedback, I made the following changes: 

1. I faded the music and sunds on the soundtrack to make them a lower volume and even during the setting up during the computer, I put it at low so that people could choose to increase the volume if they wanted. I also spaced out when each new sound would start, the track increased in intensity rather than starting at the very climax. It was meant to be intense, so I didnt change the track itself, but controlling the volume and spacing out the different sounds made it less jarring. 

2. I printed an instructions sheet which breifly explained what the project was, and how each button controlled each component that was displayed next to my laptop. 

In many ways, presenting to the class was also my first in-person user experience, and it was very interesting to see the professor ask the same question about touching the needle again, however, I didn't want to add the element of tocuh as mandatory because that can be quite scary as it was an actual needle. I also didn't want people to accidently prick or cut themselves. So during the showcase, I explained that it was an option for people, if they wanted to try it out. Without the user experience, I wouldn't have thought of it, but I think giving people the experience to see, touch and hear, added complexity to this project. 

In terms of the delay of the visualizing, I think it occured because of the delay() function present in the code for the servo motor. I couldn't remove that so instead I let the delay remain and I now call it a quirk of the project. 








