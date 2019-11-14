'use strict';

var b = [];
var a;
var clickcount=0;

function setup(){
  createCanvas(600,600);
  var rand=Math.floor(Math.random()*4);
  if(rand==0){
    rand=2;
  }
  var rand1=Math.floor(Math.random()*4);
  if(rand1==0){
    rand1=2;
  }
  
  a=new Anti(300,300,10,10);
  b.push(new Bacteria(300+Math.floor(Math.random()*400-200),300+Math.floor(Math.random()*400-200),rand,rand1));
}
function draw(){
  background(0);
   a.show();
   a.contact();
   a.move();
   text("Score:"+clickcount,100,500);
   
  
  if(mouseIsPressed){
       b[Math.floor(Math.random()*b.length)].multiply();
      clickcount+=1;
  
  }
   
  
  for(var i=0;i<b.length;i++){
   
    b[i].show();
    b[i].move();
    b[i].contact();
   
  }

  
}
class Anti
{

  constructor( x,  y,  xspeed,  yspeed){
    this.x=x;
    this.y=y;
    this.xspeed=xspeed;
    this.yspeed=yspeed;
  
    
  }
  show(){
    fill(0,0,255);
    ellipse(this.x,this.y,40,40);
    
  }
  move(){
    if(mouseX>this.x){
    this.x+=this.xspeed;
    }
    if(mouseX<this.x){
    this.x-=this.xspeed;
    }
    if(mouseY>this.y){
    this.y+=this.yspeed;
    }
    if(mouseY<this.y){
    this.y-=this.yspeed;
    }
    
    
  }
  contact(){
    if(millis()>3000){
    b.forEach(B => {
    
    if(this.x==B.x&&this.y==B.y){
      background(0);
      fill(0,255,0);
      text("You lost and the score has reset",300,300);
      clickcount=0;
    }
    
    })
  }
    }
  }

class Bacteria
{
  
  constructor( x,  y, xspeed, yspeed){
    this.x=x;
    this.y=y;
    this.xspeed=xspeed;
    this.yspeed=yspeed;
    
  }
  show(){
    fill(255,0,0);
    ellipse(this.x,this.y,20,20);
  }
  move(){
    
    if(a.x>this.x){
    this.x+=this.xspeed;
    }
    if(a.x<this.x){
    this.x-=this.xspeed;
    }
    if(a.y>this.y){
    this.y+=this.yspeed;
    }
    if(a.y<this.y){
    this.y-=this.yspeed;
    }
    
  }
  contact(){
    
      if(this.x>=580||this.x<=20){
        this.xspeed*=-1;
      }
      if(this.y>=580||this.y<=20){
        this.yspeed*=-1;
      }
      
    }
  multiply(){
     var rand=Math.floor(Math.random()*4);
     if(rand==0){
     rand=2;
     }
    var rand1=Math.floor(Math.random()*4);
    if(rand1==0){
      rand1=2;
    }
    b.push(new Bacteria(300+Math.floor(Math.random()*400-200),300+Math.floor(Math.random()*400-200),rand,rand1));
  }
 
  
  
}