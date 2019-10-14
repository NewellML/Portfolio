/* @pjs preload="data/graveyard.png.png","data/zombie-1.png"; */
int startX=0;
int startY=150;
int endX=0;
int endY=50;
int rectx;
int recty;
boolean chg=false;
int totalTime1=1200;
int savedTime;
int count=0;
int count2=0;
PImage i;
PImage x;
float x2=300;
float x3=70;
int startTime;
void setup()
{
  size(500, 500);
  strokeWeight(4);
  background(0, 0, 0);
  i=loadImage("graveyard.png.png");
  x=loadImage("zombie-1.png");
}
void draw()
{
  background(i);
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));

  while (endX<900) {
    endX=(startX+(int)(Math.random()*10));
    endY=(startY+(int)(Math.random()*19)-9);
    line(startY, startX, endY, endX);
    startX=endX;
    startY=endY;
  }

  image(x, x3, x2, 400, 400);
  int time = millis() - startTime; 
  if (time > 300) {
    reset();
  }
}
void reset(){
  startTime = millis();
  startX=0;
  startY=((int)(Math.random()*500));
  endX=0;
  endY=150;

  if (x2<250) {
    x2=x2;
  } 
  else {
    x2+=-5;
  }
  if (startY-175>x3) {
    if (x3==-115|| x3==290) {
      x3=x3;
    } 
    else {
      x3+=-5;
    }
  } 
  else {
    if (x3==-115 || x3==290) {
      x3=x3;
    } 
    else {
      x3+=5;
    }
  }
}
