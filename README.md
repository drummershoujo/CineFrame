# CineFrame
Processing code for a photo frame that controls playback of cinemagraphs by using a tilt sensor + raspberry pi
Written to run on a Raspberry Pi running Raspian Jessie. If want to run on PC, will need to import processing.io library for the sensor interaction portion.
My Pi is connected to a 7" touchscreen: https://www.adafruit.com/product/2718?gclid=EAIaIQobChMI4v2B74CM2wIVBb3sCh0WPwllEAQYAiABEgL8CfD_BwE

Uses the gifAnimation library from this GitHub:  https://github.com/01010101/GifAnimation
Note: If running on the Linux version of Processing 3, will need to change the name of "GifAnimation.jar" file to lowercase 'g'.

Cinemagraph Credits:
chopard.gif - Cinemagraph Credit: Kevin Burg and Jamie Beck, cinemagraphs.com
galaxycoffee.gif - https://giphy.com/gifs/cinemagraph-galaxy-milkyway-HoADeTqE24Ce4

Tilt Sensor used:
https://smile.amazon.com/gp/product/B00NJHMSRE/ref=od_aui_detailpages00?ie=UTF8&psc=1F

For details on the hardware part of the project ---> Coming soon! Will post parts list and Fritzing diagram.

## How to use

To trigger playback of cinemagraph, pick up photo frame to activate tilt sensor.
To stop playback put the frame back down to deactivate tilt sensor.
To change to a different cinemagraph, left-click a mouse or use the left/right arrow keys.
