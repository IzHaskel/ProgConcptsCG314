
float angle =  0.0;
float xOffset;
float yOffset;
float scalar = 100;
float speed = 0.1;
  

void setup() {
  size(1000, 1000);
  noStroke();
  
  xOffset = width /10;
yOffset = height/10;
  
}

void draw(){
  
  
 background(150);
 
 float x = xOffset + sin (angle) * scalar;
 
 float y = yOffset + cos (angle) * scalar;
 
 
    
    
//antenna

   fill (random(255),random(255),random(255));
 ellipse(x + 395, y + 50, 50, 50);

  

//head

stroke (0);
 strokeWeight(3);
 
 
  fill (random(255),random(255),random(255));
  
ellipse(x + 400, y + 200,200,200);

quad (x + 350,y + 250,  x + 450,y + 250,  x + 450, y + 350, x + 350,y + 350  );  // order is mixed but working...

fill (random(255),random(255),random(255));

quad (x + 300,y + 200,   x + 320,y + 300,   x + 480,y + 300,   x + 500,y + 200);




//rolls

fill (random(255),random(255),random(255));

ellipse(x+350,y+810,80,80);
ellipse(x+450,y + 810,80,80);

fill (random(255),random(255),random(255));

ellipse(x +275,y + 760,60,60);
ellipse(x +525,y + 760,60,60);

fill (random(255),random(255),random(255));

ellipse(x +290,y + 700,40,40);
ellipse(x +500,y + 700,40,40);



//body
fill (random(255),random(255),random(255));

quad (x +350,y + 370,  x + 300,y + 500,  x + 500,y + 500,  x + 450,y + 370);

rect(x +300,y + 500,200,200);

ellipse(x +400,y + 700,200,100);


//arms

fill (random(255),random(255),random(255));

triangle(x +250,y + 430,x +300,y + 450,x +250,y + 570);

triangle(x +500,y + 480,x +540,y + 430,x +550,y + 570);

ellipse(x +245,y + 600,50,50);

ellipse(x +555,y + 600,50,50);

//shoulders

stroke (0);
  
  
  fill (random(255),random(255),random(255));

ellipse(x + 280, y + 450,80,80);
ellipse(x+520 , y + 450,80,80);

  //eye

  fill(255);
  ellipse(x + 395, y + 200, 100, 45);

 fill(0);
  ellipse( x + 395,  y + 200, 40, 40);
 

  

  angle+=speed;
    
  }
  



 
 