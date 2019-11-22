'use strict';

var n=new Array();
var o=new Array();
var j=new Array();
var count;
function setup(){
    
    var canvas=createCanvas(800, 800);
    canvas.parent('sketch-div');
  
  //createCanvas(800,800);
   //background(0);
  
 

  for(var i=0; i<2000; i++){
  n[i]= new NormalParticle(400,400,Math.random()*360,Math.random()*5+3,Math.floor(Math.random()*250),Math.floor(Math.random()*250),Math.floor(Math.random()*250));
  
  }
  
  for(var i=0; i<100; i++){
   // o[i]= new OddballParticle(400,400,(Math.random()*435),(Math.random()*250),(Math.random()*250),(Math.random()*250));
      
        o[i]= new OddballParticle(400,400,300,200,200,200);
  }
  for(var i=0; i<200; i++){
    j[i]= new JumboParticle(400,400,Math.random()*360,Math.random()*5+3,Math.floor(Math.random()*250),Math.floor(Math.random()*250),Math.floor(Math.random()*250));
  
  }
}
function keyPressed(){
  clear();
}
function draw(){
  count++;
  background(0);
  //if(count%10==0){
   // background(0);
  //}
  for(var i=0; i<n.length; i++){
  n[i].show();
  n[i].move();
  }
  //for(var i=0; i<o.length; i++){
   // console.log("hi");
   // o[i].move();
   // o[i].show();
 // }
    o[1].move();
    o[1].show();
  for(var i=0; i<j.length; i++){
   
    j[i].show();
    j[i].move();
  }
}

class Particle{
  show(){
      
  }
  move(){
    if(this.x<0||this.x>800){
      this.x-=cos(this.angle)*this.speed;
      this.y+=sin(this.angle)*this.speed; 
    }
    else{
    if(mouseIsPressed==false){
    this.x+=cos(this.angle)*this.speed;
    this.y+=sin(this.angle)*this.speed;
    }
    if(mouseIsPressed){
      this.x-=cos(this.angle)*this.speed;
      this.y-=sin(this.angle)*this.speed;
    }
    }
    if(this.y<0||this.y>800){
       this.x+=cos(this.angle)*this.speed;
       this.y-=sin(this.angle)*this.speed;
    }
    else{
    if(mouseIsPressed==false){
    this.x+=cos(this.angle)*this.speed;
    this.y+=sin(this.angle)*this.speed;
    }
    if(mouseIsPressed){
      this.x-=cos(this.angle)*this.speed;
      this.y-=sin(this.angle)*this.speed;
    }
    }
  }
  
}



class NormalParticle extends Particle{
  
  constructor(x, y, angle, speed, r, g, b){
      super();
    this.x=x;
    this.y=y;
    this.angle=angle;
    this.speed=speed;
    this.r=r;
    this.g=g;
    this.b=b;
  }
  move(){
    if(this.x<0||this.x>800){
      this.x-=cos(this.angle)*this.speed;
      this.y+=sin(this.angle)*this.speed; 
    }
    else{
    if(mouseIsPressed==false){
    this.x+=cos(this.angle)*this.speed;
    this.y+=sin(this.angle)*this.speed;
    }
    if(mouseIsPressed){
      this.x-=cos(this.angle)*this.speed;
      this.y-=sin(this.angle)*this.speed;
    }
    }
    if(this.y<0||this.y>800){
       this.x+=cos(this.angle)*this.speed;
       this.y-=sin(this.angle)*this.speed;
    }
    else{
    if(mouseIsPressed==false){
    this.x+=cos(this.angle)*this.speed;
    this.y+=sin(this.angle)*this.speed;
    }
    if(mouseIsPressed){
      this.x-=cos(this.angle)*this.speed;
      this.y-=sin(this.angle)*this.speed;
    }
    }
  }
  show(){
    fill(this.r,this.g,this.b);
    
    ellipse(this.x,this.y,10,10);
  }
//your code here

}


class JumboParticle extends NormalParticle  //uses inheritance
{
   
 constructor(x, y, angle, speed, r, g, b){
   super(x,y,angle,speed,r,g,b);
 }
 show(){
    fill(this.r,this.g,this.b);
    
    ellipse(this.x,this.y,20,20);
  }


}





class OddballParticle //uses an interface
{

  constructor(x1, y1, r1, r, g, b){
      
      
    this.x1=x1;
    this.y1=y1;
    this.r1=r1;
    this.r=r;
    this.g=g;
    this.b=b;
  }
  move(){
    var t=millis()/1000.0;
    this.x=(this.x1+this.r1*cos(this.t));
    this.y=(this.y1+this.r1*sin(this.t));
      
  
  }
  show(){
    //fill(this.r,this.g,this.b);
       fill(255,0,0);
    
    ellipse(this.x,this.y,20,20);
      //console.log(this.r);
   
  }

}