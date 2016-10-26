class Person {
  
  
  float x;
  float y;
  float size;
  color theColorskin = color(242, 174,100);
  color theColorshirt = color(93, 13,160);
  color theColorpants = color(19,30,210);
 
  
   Person(float tempX, float tempY, float tempSize, color tempColorskin, color tempColorshirt , color tempColorpants){
     
     
     
    x = tempX;
    y = tempY;
  size = tempSize;
  theColorskin = tempColorskin;
  theColorshirt = tempColorshirt;
  theColorpants = tempColorpants;
  
}

void move (){
  x+=2;
  
  if (x> width + size ) {
    x = -size;
  }
}


void display (){
  
  
  noStroke ();
//strokeWeight(2);
  
 
  
    rectMode (CENTER);
  
  
fill(159, 39,193);

 
  rect(x, y+25, size/2.5, size);
    
    //face
   
   fill(theColorskin);
   
     fill (255);
   ellipse(x, y/1.5, 100,100);
   
   //beak
    fill (242,181,56);
   triangle(x+40,y-130,x+40,y-70,x+100,y-70);
   
   //eye
   
    fill (0);
     ellipse(x-28, y/1.5, 20,20);
     
     noFill ();
     noStroke ();
     ellipse(x-28, y/1.5, 24,22);
     
     //arms
     
     fill(255);
     
    // triangle(x,y,x+40,y-50,x+100,y-50); // front
    // triangle(x,y,x-40,y+50,x-100,y+50); //back
      triangle(x,y,x+20,y+80,x-20,y+60); //mid
     
     //legs
     
     fill(theColorpants);
     
     triangle(x,y+90,x+20,y+250,x-20,y+250); //mid
     //triangle(x,y+90,x+100,y+220,x+80,y+250); //front
     //triangle(x,y+90,x-100,y+220,x-80,y+250); //back
    
     
 
  
}}