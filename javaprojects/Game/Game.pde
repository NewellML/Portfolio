String s;
String a;
boolean chg=false;
int totalTime1=1200;
int savedTime;
float xpos=100;
float ypos=250;
float velocity=0;
int count=0;
int count2=0;
String score="Game Over";
Rect[] recta = new Rect[1000];
Rect r;
Over o;
  void setup(){
    size(700,500);
    for(int x = 0; x<recta.length; x++ )
      recta[x] = new Rect();
   
    r=new Rect();
    o=new Over();
    
  }
  void draw(){
    background(150,150,200);
    
    fill(0);
    rect(0,475,700,700);
    rect(0,0,700,25);
    playerDraw();
    playerMove();
    rects();
   
  }
  void rects(){
    
    int passedTime=(millis()-savedTime);
    if (chg==false) {
      pushMatrix();
      recta[count].drawrect();
      popMatrix();
      
  
    
    
   
   
  } else {
    pushMatrix();
    recta[count+1].drawrect();
    popMatrix();
    
  
  }
  if (passedTime>totalTime1) {
    println("3 seconds");
    if (chg==false) {
      chg=true;
      count2++;
    } else if (chg==true) {
      chg=false;
      count+=2;
      count2++;
    }
    savedTime=millis();
    println(savedTime);
    println(count);
    println("count"+count2);
  }
    }
   
  
   
  
 void playerDraw() { 
  fill(74, 226, 87); 
  rect(xpos, ypos, 20, 20);
}
 
void playerMove() {
 
 
  float speed =-12.0 ; 
  for(int i=0;i<recta.length;i++){
    if(xpos+20>recta[i].x&&xpos<recta[i].x+100&&ypos+20>recta[i].y&&ypos<recta[i].y+60){
    ypos=100000000;
    o.display();
    score="     Game Over \nYou got a score of:"+Integer.toString(count2);
    
  }
  }
  if (holdLeft) { 
    ypos += speed;
  } 
  if(ypos<10){
    ypos=-200000000;
    o.display();
    
  }
  if(ypos>465){
    ypos=1000000;
    o.display();
    
  }
  if(ypos==500)
    ypos=500;
   
  else
    ypos=ypos+5;

 

 
  
}

public class Over{
  public void display(){
    fill(0);
    rect(0,0,800,800);
    String str = "Game Over";
  fill(168,0,0);
  textSize(60);
  
  
  text(score, 60,100, 800,700);
  
  }
}

boolean holdLeft = false, holdRight = false;
 
void setSignal (boolean setTo) { 
  if (keyCode == LEFT) { 
    holdLeft = setTo;
  } 
  if (keyCode == RIGHT) { 
    holdRight = setTo;
  }
}
 
void keyPressed() { 
  setSignal(true);
}
 
void keyReleased() { 
  setSignal(false);
 
    if (keyCode == UP) { 
    ypos=ypos-15;
    //if (ypos > 400) { 
    //  ypos -=20;
    //} else {
    //  ypos+=20;
    //}
  }
}

public class Rect{
    int y=(int)(Math.random()*410)+15;
    int z;
    int x=700;
    float speed=-25;
    float velocity=0;
  
  public void Rect(){    
    fill(11,26,6);
    rect(x,z,50,100);
    speed+=velocity;
    x+=speed;
    System.out.println("guy");
  }
  
  void drawrect(){
    fill(11,26,6);
   rect(x,y,100,60);
   speed+=velocity;
    x+=speed;
  }
}
