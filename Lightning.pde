int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;

PImage photo;
void setup()
{
  size(300,300);
  strokeWeight(.90);
  //background(1,38,87);
  photo = loadImage("Apjavalightning.jpg"); 
  image(photo,0,0,300,300);
}
void draw()
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
void mousePressed()
{
 //background(1,38,87);
 image(photo,0,0,300,300);
 startX = 150; 
 startY = 0;
 endX = 150;
 endY = 0;
 
}

