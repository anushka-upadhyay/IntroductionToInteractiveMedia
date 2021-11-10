**November 11 Assignment Updates**


So first, before deciding what to do, I wanted to connect my digital and analog sensors to the LEDs and make sure they work. First I tried creating a simple circuit with two LEDS, then when I added a swtich and light sensor, the circuit stopped working. I instead then, chose to build a circuit with the sensors first, using the examples of DigitalRead and AnalogRead along the way to make sure the circuit was working. When I was sure they were good, I added to LEDs to each sensors circuit. It took me some trial and error to get the circuit running because I initially added the LEDs between ground and the sensors and it didn't work. I don't fully understand, why it didn't work, but once I switched their position it was fine. 

This is my schematic: 

![Note 10 Nov 2021](https://user-images.githubusercontent.com/89835212/141161453-eb10daa4-4cf9-45f5-bb06-f89278d5a0cd.jpg)

After this, I wanted to create a code on Arduino that made the speed of the LEDs depend on the LDR value unless the switch is pressed, in which case, another pattern would start. 

However, with this schematic I realized that since I was attaching the LED to the light sensor, I couldn't use A1 as both an analog and digital input and output. So instead, I added a new resistor and connected the LED to another digital pin. I'm not sure if this shcematic makes sense, because I was unsure of where to put the new LED connection, but rhe new schematic looks like this: 

![Note 10 Nov 2022](https://user-images.githubusercontent.com/89835212/141165698-b6f9e635-4439-4f62-a58a-768460c22c44.jpg)

I was scared that the same problem would arrise with the Blue LED and the switch, but I decided to try it and it worked so I left it like that. I then wrote my code quite easily, referring to the examples we had worked on in class and by modifying them. It took me a bit of time but I got it to do what I wanted. Here are the pictures and videos of the project: 


https://user-images.githubusercontent.com/89835212/141168975-97a53aed-47a2-46d1-a143-270c0fea9928.mp4

![255783026_593722381971025_5257891380086885958_n](https://user-images.githubusercontent.com/89835212/141169017-25038931-9931-474b-a632-1bfbbf3907e3.jpeg)![255801499_4524338157659660_5843519895992505756_n](https://user-images.githubusercontent.com/89835212/141169024-1ff007cc-d538-4639-adf3-605aae1d0ba6.jpeg)


