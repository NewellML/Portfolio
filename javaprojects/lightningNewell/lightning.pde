

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

void setup()
{
    size(629,400);
    strokeWeight(2);
    background(0,0,0);
    i=loadImage("graveyard.jpg");
    

}
void draw()
{
   background(i);
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  
  while(endX<900){
    endX=(startX+(int)(Math.random()*10));
    endY=(startY+(int)(Math.random()*19)-9);
    line(startY,startX,endY,endX);
    startX=endX;
    startY=endY;
  }
    
  

  
    
   
  
   
  
  
if(mousePressed){
  startX=0;
  startY=mouseX;
  endX=0;
  endY=150;
}
}
void mousePressed()
{
  startX=0;
  startY=mouseY;
  endX=0;
  endY=150;

}
