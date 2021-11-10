**November 11 Assignment Updates**


So first, before deciding what to do, I wanted to connect my digital and analog sensors to the LEDs and make sure they work. First I tried creating a simple circuit with two LEDS, then when I added a swtich and light sensor, the circuit stopped working. I instead then, chose to build a circuit with the sensors first, using the examples of DigitalRead and AnalogRead along the way to make sure the circuit was working. When I was sure they were good, I added to LEDs to each sensors circuit. It took me some trial and error to get the circuit running because I initially added the LEDs between ground and the sensors and it didn't work. I don't fully understand, why it didn't work, but once I switched their position it was fine. 

This is my schematic: 

![Note 10 Nov 2021](https://user-images.githubusercontent.com/89835212/141161453-eb10daa4-4cf9-45f5-bb06-f89278d5a0cd.jpg)

After this, I wanted to create a code on Arduino that made the speed of the LEDs depend on the LDR value unless the switch is pressed, in which case, another pattern would start. 


