int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;


void setup()
{
  size(300,300);
  strokeWeight(.27);
  //background(1,38,87);
  //photo = loadImage(filename);
}
void draw()
{
  stroke(0, 0, (int)(Math.random()*255));
  while (endY < 300) 
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
 background(1,38,87);
 startX = 150; 
 startY = 0;
 endX = 150;
 endY = 0;
 
}

