'use strict';

var startX = 0;
var startY = 150;
var endX = 0;
var endY = 50;
var rectx;
var recty;
var chg = false;
var totalTime1 = 1200;
var savedTime;
var count = 0;
var count2 = 0;
var i;
var x;
var x2 = 300;
var x3 = 70;
var startTime = 0;
var speed=.5;
let millisecond;

function preload() {
    i = loadImage("graveyard.png.png");
    x = loadImage("zombie-1.png");

}

function setup() {
    createCanvas(500, 500);
    strokeWeight(4);
    background(0, 0, 0);
    //millisecond = millis();

}

function draw() {
    background(i);
    stroke((Math.random() * 256), (Math.random() * 256), (Math.random() * 256));


    while (endX < 900) {
        endX = (startX + (Math.random() * 10));
        endY = (startY + (Math.random() * 19) - 9);
        line(startY, startX, endY, endX);
        startX = endX;
        startY = endY;
    }
    
    

    image(x, x3, x2, 400, 400);
    x3+=speed;
     if (x3 == -115 || x3 == 290) {
            speed=speed*-1;
         console.log("test");
     }
    var time = millis() - startTime;
    
    if (time > 1000) {
        reset();
    }
}

function reset() {
    startTime = millis();
    startX = 0;
    startY = ((Math.random() * 500));
    endX = 0;
    endY = 150;

    if (x2 < 250) {
        x2 = x2;
    } else {
        x2 += -5;
    }
    if (x3 == -115 || x3 == 290) {
            speed=0;
    }
    if (startY - 175 > x3) {
        if (x3 == -115 || x3 == 290) {
            speed=0;
        } else {
            if(speed=.5){
            speed=-.5;
            }
        }
    } else {
        if (x3 == -115 || x3 == 290) {
            speed=0;
        } else {
            
            speed=.5;
            
        }
    }
}
