//int-vertex-random


int circleWidth;
int circleHeight;

void setup() {
  size(800, 800);
  circleWidth=100;  
  circleHeight=150;


  noFill();
  strokeWeight(1);
  stroke(25);
}

void draw() {
  mousePressed();
  {

    for (int i =0; i<150; i++) {
      
          ellipse(width/2, height/2, circleWidth, circleHeight);
          circleWidth=circleWidth+5;
          circleHeight= circleHeight+10;
          stroke(20, 32, 58);
        }
        stroke(random(255), random(255), random(255));
        circleWidth= 100;
        circleHeight= 10000;
      }
      stroke(random(255), random(255), random(255));
    }
  


/*

 
 
 void setup(){
 size(800,800);
 
 //  pick your own points and make sure the shape is closed
 
 beginShape();
 vertex(100,100);
 vertex(100,500);
 vertex(500,500);
 endShape(CLOSE);
 
 }*/
