Die die1;
Die die2;
Die die3;
Die die4;
Die die5;
Die die6;
Die die7;
Die die8;
Die die9;
Turtle t1;
Turtle t2;
Turtle t3;
Turtle t4;
Turtle t5;
Turtle t6;

int d1=50;
int d2=50;
int d3=50;
int d4=50;
int d5=50;
int d6=50;
int total;
PFont f;
int y2=550;
void setup()
{
  size(500,800);
  noLoop();
  
  
}
void draw()
{
  background(0);
  die1=new Die(50,50);
  die1.show();
  die2=new Die(200,50);
  die2.show();
  die3=new Die(350,50);
  die3.show();
  die4=new Die(50,200);
  die4.show();
  die5=new Die(200,200);
  die5.show();
  die6=new Die(350,200);
  die6.show();
  die7=new Die(50,350);
  die7.show();
  die8=new Die(200,350);
  die8.show();
  die9=new Die(350,350);
  die9.show();
  total=die1.rand+die2.rand+die3.rand+die4.rand+die5.rand+die6.rand+die7.rand+die8.rand+die9.rand;
  System.out.println(total);
  
  fill(25,200,50);
  text("Total:"+total,60,500);
  text("1",30,550);
  text("2",30,590);
  text("3",30,630);
  text("4",30,670);
  text("5",30,710);
  text("6",30,760);
  
  if(die1.roll()==1){
    d1+=6;
  }
  if(die2.roll()==1){
      d1+=6;
  }
  if(die3.roll()==1){
      d1+=6;
  }
  if(die4.roll()==1){
      d1+=6;
  }
  if(die5.roll()==1){
      d1+=6;
  }
  if(die6.roll()==1){
      d1+=6;
  }
  if(die1.roll()==2){
      d2+=6;
  }
  if(die2.roll()==2){
      d2+=6;
  }
  if(die3.roll()==2){
      d2+=6;
  }
  if(die4.roll()==2){
      d2+=6;
  }
  if(die5.roll()==2){
      d2+=6;
  }
  if(die6.roll()==2){
      d2+=6;
  }
  if(die1.roll()==3){
      d3+=6;
  }
  if(die2.roll()==3){
      d3+=6;
  }
  if(die3.roll()==3){
      d3+=6;
  }
  if(die4.roll()==3){
      d3+=6;
  }
  if(die5.roll()==3){
      d3+=6;
  }
  if(die6.roll()==3){
      d3+=6;
  }
  if(die1.roll()==4){
      d4+=6;
  }
  if(die2.roll()==4){
      d4+=6;
  }
  if(die3.roll()==4){
      d4+=6;
  }
  if(die4.roll()==4){
      d4+=6;
  }
  if(die5.roll()==4){
      d4+=6;
  }
  if(die6.roll()==4){
      d4+=6;
  }
  if(die1.roll()==5){
      d5+=6;
  }
  if(die2.roll()==5){
      d5+=6;
  }
  if(die3.roll()==5){
      d5+=2;
  }
  if(die4.roll()==5){
      d5+=6;
  }
  if(die5.roll()==5){
      d5+=6;
  }
  if(die6.roll()==5){
      d5+=6;
  }
  if(die1.roll()==6){
      d6+=6;
  }
  if(die2.roll()==6){
      d6+=6;
  }
  if(die3.roll()==6){
      d6+=6;
  }
  if(die4.roll()==6){
      d6+=6;
  }
  if(die5.roll()==6){
      d6+=6;
  }
  if(die6.roll()==6){
      d6+=6;
  }
  if(d1>450){
    text("Number 1 Wins",200,550);
    d1=50;
    d2=50;
    d3=50;
    d4=50;
    d5=50;
    d6=50;
  }
  if(d2>450){
    text("Number 2 Wins",200,550);
    d1=50;
    d2=50;
    d3=50;
    d4=50;
    d5=50;
    d6=50;
  }
  if(d3>450){
    text("Number 3 Wins",200,550);
    d1=50;
    d2=50;
    d3=50;
    d4=50;
    d5=50;
    d6=50;
  }
  if(d4>450){
    text("Number 4 Wins",200,550);
    d1=50;
    d2=50;
    d3=50;
    d4=50;
    d5=50;
    d6=50;
  }
  if(d5>450){
    text("Number 5 Wins",200,550);
    d1=50;
    d2=50;
    d3=50;
    d4=50;
    d5=50;
    d6=50;
  }
  if(d6>450){
    text("Number 6 Wins",200,550);
    d1=50;
    d2=50;
    d3=50;
    d4=50;
    d5=50;
    d6=50;
  }
  t1=new Turtle(50,550,d1,y2);
  t1.run();
  t1.tracks();
  t1.run();
  
  t2=new Turtle(50,550,d2,y2+40);
  t2.run();
  t2.tracks();
  t2.run();
  
  t3=new Turtle(50,550,d3,y2+80);
  t3.run();
  t3.tracks();
  t3.run();
  
  t4=new Turtle(50,550,d4,y2+120);
  t4.run();
  t4.tracks();
  t4.run();
  
  t5=new Turtle(50,550,d5,y2+160);
  t5.run();
  t5.tracks();
  t5.run();
  
  t6=new Turtle(50,550,d6,y2+200);
  t6.run();
  t6.tracks();
  t6.run();
  
  //your code here
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  private int x;
  private int y;
  private int rand;
  //variable declarations here
  Die(int x, int y) //constructor
  {
    this.x=x;
    this.y=y;
    rand=(int)((Math.random()*6)+1);
    //variable initializations here
  }
  int roll()
  {
    return rand;
  }
  void show()
  {
    if(mousePressed){
      
      if(rand==1){
        fill(255,255,255);
        rect(x,y,100,100);
        fill((float)(Math.random()*250),(float)(Math.random()*250),(float)(Math.random()*250));
        ellipse(x+50,y+50,20,20);
      }
      if(rand==2){
        fill(255,255,255);
        rect(x,y,100,100);
        fill((float)(Math.random()*250),(float)(Math.random()*250),(float)(Math.random()*250));
        ellipse(x+15,y+15,20,20);
        ellipse(x+85,y+85,20,20);
      }
      if(rand==3){
        fill(255,255,255);
        rect(x,y,100,100);
        fill((float)(Math.random()*250),(float)(Math.random()*250),(float)(Math.random()*250));
        ellipse(x+15,y+15,20,20);
        ellipse(x+85,y+85,20,20);
        ellipse(x+50,y+50,20,20);
      }
      if(rand==4){
        fill(255,255,255);
        rect(x,y,100,100);
        fill((float)(Math.random()*250),(float)(Math.random()*250),(float)(Math.random()*250));
        ellipse(x+15,y+15,20,20);
        ellipse(x+85,y+85,20,20);
        ellipse(x+15,y+85,20,20);
        ellipse(x+85,y+15,20,20);
      }
      if(rand==5){
        fill(255,255,255);
        rect(x,y,100,100);
        fill((float)(Math.random()*250),(float)(Math.random()*250),(float)(Math.random()*250));
        ellipse(x+15,y+15,20,20);
        ellipse(x+85,y+85,20,20);
        ellipse(x+15,y+85,20,20);
        ellipse(x+85,y+15,20,20);
        ellipse(x+50,y+50,20,20);
      }
      if(rand==6){
        fill(255,255,255);
        rect(x,y,100,100);
        fill((float)(Math.random()*250),(float)(Math.random()*250),(float)(Math.random()*250));
        ellipse(x+15,y+15,20,20);
        ellipse(x+85,y+85,20,20);
        ellipse(x+15,y+85,20,20);
        ellipse(x+85,y+15,20,20);
        ellipse(x+15,y+50,20,20);
        ellipse(x+85,y+50,20,20);
      }
      
    }
    //your code here
  }
}
class Turtle //models one single dice cube
{
  private int x;
  private int y;
  private int x2;
  private int y2;
  
  //variable declarations here
  Turtle(int x, int y, int x2, int y2) //constructor
  {
    this.x=x;
    this.y=y;
    this.x2=x2;
    this.y2=y2;
   
    //variable initializations here
  }
  void tracks()
  {
   
    //your code here
  }
  void run(){
    fill((float)(Math.random()*250),(float)(Math.random()*250),(float)(Math.random()*250));
    
    
    rect(x2,y2,10,10);
   
  }
}
  
