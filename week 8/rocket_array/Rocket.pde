 class Rocketship {
   
  float x;
  float y;
  float size;
  color theColor = color(100, 250,0);

 
  Rocketship(float tempX, float tempY, float tempSize, color tempColor){
    
    x = tempX;
    y = tempY;
  size = tempSize;
  theColor = tempColor;
}

void move (){
  x+=2;
  
  if (x> width + size ) {
    x = -size;
  }
}

void hover () {
  x += random (-1,1);
  y += random (-1, 1);
}

void display (){
  
   rectMode (CENTER);
  
  
  fill (theColor);
 
  rect(x, y, size, size/2);
  
    fill (150);
    
    // stripe 
  
rect(x + size /3, y, size/4, size/2);
  
   fill (theColor);
  
 triangle (x+size/2, y-size /4, x+size/2, y+size/4, x+ size, y);
 
 
 
 //distance of the flame on y
 for (int i=0; i<size/2; i++){
   stroke (random (100, 255), random (0,75), random (0,75));
   
   noFill();
   float circleSize = random (size/5, size/3);
   ellipse(x-size/1.7, y-size/4+i, circleSize, circleSize); 
   
   //above there is the distance on x 
  
  
  
  
}}}