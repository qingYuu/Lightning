import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Lightning extends PApplet {

int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;

PImage photo;
public void setup()
{
  size(300,300);
  strokeWeight(.90f);
  background(1,38,87);
  photo = loadImage("Apjavalightning2.png"); 
  image(photo,0,0,300,300);
  
}
public void draw()
{ 
 
  stroke(0, 0, (int)(Math.random()*255)-94);
  while (endY < 500) 
  {
  	endX = startX + (int)(Math.random()*18)-9;
    endY = startY + (int)(Math.random()*9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
   
  
}
public void mousePressed()
{
 background(1,38,87);
 image(photo,0,0,300,300);
 
 startX = 150; 
 startY = 0;
 endX = 150;
 endY = 0;
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
