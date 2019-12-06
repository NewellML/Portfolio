import peasy.*;
int count, count1, count2, count3;


PeasyCam cam;
World w;
House cabin;
Tree t;
Snowman guy = new Snowman();
Snowman guy2 = new Snowman();
Snowman guy3 = new Snowman();
ArrayList<Snowball> snowballs = new ArrayList<Snowball>();
ArrayList<Snowbuild> snow = new ArrayList<Snowbuild>();

void setup() {
  size(800, 800, P3D);
  lights();
  cam = new PeasyCam(this, height / 2, (width / 2) - 200, 0, 1000);
  cam.setMaximumDistance(1500);
  cam.setMinimumDistance(100);
  w = new World();
  cabin = new House();
   t = new Tree(50,40,200);
  for (int i = 0; i < 500; i++) {
    snowballs.add( new Snowball());
  }
}

void draw() {
  int m=millis();
  background(32, 3, 148);
  textSize(100);
  noFill();
  text("Happy Holidays!",0,-50);
  w.show();
  guy.show();
  translate(140,-100,0);
  guy2.show();
  translate(-140,100,0);
  translate(50,200,0);
  guy3.show();
  translate(-50,-200,0);
  cabin.show();
  if(m%10==0){
    snow.add(new Snowbuild());
  }
  for(int i=0; i<snow.size();i++){
    translate(0,0,.5);
    snow.get(i).show();
  }

  for (int i = 0; i < snowballs.size(); i++) {
    snowballs.get(i).show();
    snowballs.get(i).move();
    snowballs.get(i).reset();
  
  }
  t.show();
}

interface Snow {
  void move();
  void show();
}

class Snowball implements Snow {
  private float xPos, yPos, zPos, zVel, xSpiral, ySpiral, r;
  
  
  Snowball() {
    zPos = (float)(Math.random() * 1000) + 4;
    r = (float)(Math.random() * 5);
    xPos = ((float)(Math.random() * (792 - (r * 2))) + 4) - 400;
    yPos = ((float)(Math.random() * (792 - (r * 2))) + 4) - 400;
    zVel = /*(int)(Math.random() * 2) + */1;
    noLights();
  }
  
  void move() {
    zPos-= zVel;
    xSpiral = r * cos(6 * zPos);
    ySpiral = r * sin(6 * zPos);
  }
  
  void show() {
    sphereDetail(10);
    pushMatrix();
    translate(xPos + xSpiral, yPos + ySpiral, zPos);
    fill(255);
    noStroke();
    sphere(2);
    popMatrix();
  }
  
  void reset() { 
    if (zPos < 0) {
      zPos = 1000;
     
    }
  }
  
  void hitbox() {
    
  }
}
class Snowbuild {
  Snowbuild(){
  }
  void show(){
    fill(255);
    box(800,800,.5);
  }
}

class Snowman {
  
  void show() {
    body();
    head();
    //body2();
  }
  
  void body() {
    pushMatrix();
    sphereDetail(32);
    fill(255);
    translate(-200, -150, 16);
    sphere(32);
    translate(0, 0, 36);
    sphere(24);
    translate(0, 0, 28);
    sphere(18);
    translate(0,30,-60);
    fill(0);
    sphere(4);
    translate(0,-9,36);
    sphere(4);
    translate(0,4,-18);
    sphere(4);
    popMatrix();
    
  }
  void body2(){
    fill(255);
    translate(-300, -80, 16);
    sphere(32);
    translate(0, 0, 36);
    sphere(24);
    translate(0, 0, 28);
    sphere(18);
    translate(0,30,-60);
    fill(0);
    sphere(4);
    translate(0,-9,36);
    sphere(4);
    translate(0,4,-18);
    sphere(4);
  }
  void head(){
    pushMatrix();
    fill(0);
    translate(-206,-136,88);
    sphere(3);
    translate(12,0,0);
    sphere(3);
    translate(-6,4,-10);
    sphere(2);
    translate(-5,0,.5);
    sphere(2);
    translate(-5,0,1);
    sphere(2);
    translate(15,0,-1);
    sphere(2);
    translate(5,0,1);
    sphere(2);
    fill(255,69,0);
    translate(-10,0,6);
    beginShape();
    vertex(0,0,0);
    vertex(5,0,-5);
    vertex(-5,0,-5);
    endShape();
    beginShape();
    vertex(0,0,0);
    vertex(5,0,-5);
    vertex(0,5,-2.5);
    endShape();
    beginShape();
    vertex(0,0,0);
    vertex(-5,0,-5);
    vertex(0,5,-2.5);
    endShape();
    beginShape();
    vertex(5,0,-5);
    vertex(-5,0,-5);
    vertex(0,5,-2.5);
    endShape();
    popMatrix();
  }
  
}


class Tree {
  
  int sides;
  float r, h;
  Tree(int sides, float r, float h){
    this.sides=sides;
    this.r=r;
    this.h=h;
  }
  void show() {
    
    fill(153,51,0);
    trunk();
    leaves();
    for(int i=0;i<7;i++){
    translate(0,0,30);
    rotateZ(PI/3.0);
    leaves();
    }
  }
  void trunk(){
    translate(-250,200,100);
    float angle = 360 / sides;
    float halfHeight = h / 2;
 
    // draw top of the tube
    beginShape();
    for (int i = 0; i < sides; i++) {
        float x = cos( radians( i * angle ) ) * r;
        float y = sin( radians( i * angle ) ) * r;
        vertex( x, y, -halfHeight);
    }
    endShape(CLOSE);
 
    // draw bottom of the tube
    beginShape();
    for (int i = 0; i < sides; i++) {
        float x = cos( radians( i * angle ) ) * r;
        float y = sin( radians( i * angle ) ) * r;
        vertex( x, y, halfHeight);
    }
    endShape(CLOSE);
 
    // draw sides
    beginShape(TRIANGLE_STRIP);
    for (int i = 0; i < sides + 1; i++) {
        float x = cos( radians( i * angle ) ) * r;
        float y = sin( radians( i * angle ) ) * r;
        vertex( x, y, halfHeight);
        vertex( x, y, -halfHeight);    
    }
    endShape(CLOSE);
  }
  void leaves(){
    fill(0,153,51);
    
    beginShape();
    vertex(125,75,20);
    vertex(-125,75,20);
    vertex(0,-125,20);
    endShape();
    beginShape();
    vertex(125,75,20);
    vertex(-125,75,20);
    vertex(0,0,100);
    endShape();
    beginShape();
    vertex(125,75,20);
    vertex(0,-125,20);
    vertex(0,0,100);
    endShape();
    beginShape();
    vertex(-125,75,20);
    vertex(0,-125,20);
    vertex(0,0,100);
    endShape();
    beginShape();
    vertex(125,75,20);
    vertex(0,-125,20);
    vertex(0,0,100);
    endShape();
    beginShape();
    
    vertex(125,75,20);
    vertex(-125,75,20);
    vertex(0,-125,20);
    endShape();
    beginShape();
    vertex(125,75,20);
    vertex(-125,75,20);
    vertex(0,0,100);
    endShape();
    beginShape();
    vertex(125,75,20);
    vertex(0,-125,20);
    vertex(0,0,100);
    endShape();
    beginShape();
    vertex(-125,75,20);
    vertex(0,-125,20);
    vertex(0,0,100);
    endShape();
    beginShape();
    vertex(125,75,20);
    vertex(0,-125,20);
    vertex(0,0,100);
    endShape();
  }
  
  
}




class House {
  
  void show() {
    pushMatrix();
    translate(150,-120,110);
    fill(153,51,0);
    box(300,300,200);
    fill(200,51,0);
    beginShape();
    vertex(-200,-200,100);
    vertex(200,-200,100);
    vertex(200,200,100);
    vertex(-200,200,100);
    endShape();
    beginShape();
    vertex(-200,-200,100);
    vertex(200,-200,100);
    vertex(0,0,300);
    endShape();
    beginShape();
    vertex(-200,-200,100);
    vertex(-200,200,100);
    vertex(0,0,300);
    endShape();
    beginShape();
    vertex(-200,200,100);
    vertex(200,200,100);
    vertex(0,0,300);
    endShape();
    beginShape();
    vertex(200,200,100);
    vertex(200,-200,100);
    vertex(0,0,300);
    endShape();
    
    fill(155,255,204);
    translate(-100,150,25);
    box(50,2,50);
    translate(200,0,0);
    box(50,2,50);
    translate(-100,0,-75);
    fill(102,51,0);
    box(50,2,100);
    
    popMatrix();
  }
  
}


class Sleigh {
  
  void show() {
    
  }
  
  void move() {
    
  }
  
}


class World {
  
  void show() {
    translate(400, 400, -50);
    fill(20,10,0);
    rotateX(PI/2.2);
    box(800,800,4);
    fill(10,255,50);
    translate(0,0,-10);
    box(800, 800, 20);
    
    /*
    translate(0, 0, -200);
    rotateX(PI/2);
    cam.beginHUD();
    fill(255, 100);
    //noFill();
    //stroke(255, 50);
    cam.endHUD();
    */
  }
  
}
