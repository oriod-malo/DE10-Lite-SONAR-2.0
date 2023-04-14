# DE10-Lite-SONAR-2.0
This is an updated version of my older DE10 Lite-based sonar you can find here: https://github.com/oriod-malo/DE10_Lite_SONAR

## Description

In the previous version, the HC-SR04 was static thus being able to measure distance in 1 dimension only. Also grid was random divided in equal squares:
<br>
<br>
### Previous version issues
![image](https://user-images.githubusercontent.com/123891760/232122636-8387540f-c444-412c-9624-69b9788cd6a5.png)<br>
<br>

### Update Desctiption
I found a SG-90 Servo Motor for which I built a plastic holder in order to bind there the HC-SR04 sensor.
Servo Motors work with PWM (pulse width modulation) which makes possible to keep track of the angle the sensor is viewing.
This way it was possible to map the SONAR in a two-dimensional grid with the X-Axis corresponding to angle and Y-Axis to distance.
I also added a minimum distance of 10cm for the SONAR so it won't display any value smaller than 10cm and avoided the random nul values due to HC-SR04 response time.<br>

### Update Screenshoots
In the newer version, the display can support from 0° to 180° mapped in 540 pixels (3pixel/degree) as well as calibrated distance up to 400cm(4m).<br>
A vertical cyan cursor representing the HC-SR04's current postiton slides horizontally and gives information regarding the objects in that specific angle:<br>
![image](https://user-images.githubusercontent.com/123891760/232119850-42843810-2d1b-4fca-8ef2-9ae15bfc7465.png)

Furthermore since the HC-SR04 has a 15° angle of recognition so the angle cursor will have two smaller side bars that inbetween include the equivalent of 15°(+/-21 pixels or 7° from the central position):<br>
![image](https://user-images.githubusercontent.com/123891760/232120577-52f6d750-e143-4728-a60a-22855abe02a2.png)

## Known Issues / Limitations
SG90 Servo motors rotate for around 90°-100° as well as require an exact number of steps(in this case 100) to switch direction effectively. Otherwise they show issues.<br>
Therefore the current implementation with a HC-SR04 cannot make full use of the whole 180° capability of the radar display.<br>
It will go back and forth from around 100.<br>
## Videos

### Measuring objects on table (SONAR & Servo)


https://user-images.githubusercontent.com/123891760/232118260-32d062c1-2100-478f-bc83-6ae3c3399b04.mp4


### Measuring objects on table (VGA output of previous video)


https://user-images.githubusercontent.com/123891760/232118297-a9b2a5f4-d86a-48ab-952d-779081e546b0.mp4


### Keeping Sensor in the same position and moving the hand closer / farther (VGA only)



https://user-images.githubusercontent.com/123891760/232118321-848e476e-938e-471e-a6b8-2e90c7a13238.mp4
