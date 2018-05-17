/*
* Using the gifAnimation library from this GitHub:  https://github.com/01010101/GifAnimation
* This program is meant to play and control Cimemagraphs.
*/

import gifAnimation.*;
import processing.io.*;

Gif[] cinemagraphs;
Gif currentCinemagraph;
int cinemagraphCount = 2;
int cinemagraphIndex = 0;

int tiltSensorPin = 17;

void setup()
{
  GPIO.pinMode(tiltSensorPin, GPIO.INPUT);
  
  // Set the size of the sketch
  //size(800, 480); // This is screen resolution of the Raspberry Pi touchscreen I have.
  fullScreen();
  noCursor();
  
  // Load the GIF

  cinemagraphs = new Gif[cinemagraphCount];
  cinemagraphs[0] = new Gif(this, "chopard.gif");
  cinemagraphs[1] = new Gif(this, "galaxycoffee.gif");
  // TODO: Make your own cinemagraph
   
  currentCinemagraph = cinemagraphs[cinemagraphIndex];
}

void draw()
{
  //image(cinemagraph, 0, 0);
  image(currentCinemagraph, 0, 0, 800, 480);
  
  if(GPIO.digitalRead(tiltSensorPin) == GPIO.HIGH)
  {
    currentCinemagraph.play();
    //print("Sensor high");
  }
  else
  {
    currentCinemagraph.pause();
    //print("Sensor low");
  }
}

void mousePressed()
{
  goNextCinemagraph();
}

void keyPressed()
{
  if (keyCode == RIGHT)
  {
    goNextCinemagraph();
  }
  if (keyCode == LEFT)
  {
    goPreviousCinemagraph();
  }
}

void goNextCinemagraph()
{
    cinemagraphIndex = (cinemagraphIndex + 1) % cinemagraphCount;
    currentCinemagraph = cinemagraphs[cinemagraphIndex];
}

void goPreviousCinemagraph()
{
    if((cinemagraphIndex - 1) < 0)
    {
      cinemagraphIndex = cinemagraphCount - abs(cinemagraphIndex - 1) % cinemagraphCount;
    }
    else
    {
      cinemagraphIndex = (cinemagraphIndex - 1) % cinemagraphCount;
    }
    currentCinemagraph = cinemagraphs[cinemagraphIndex];
}
