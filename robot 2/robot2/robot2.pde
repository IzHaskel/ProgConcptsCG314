
float angle =  0.0;
float xOffset;
float yOffset;
float scalar = 300;
float speed = 0.05;
  


void setup() {

  size(1000, 1000);

 
   
xOffset = width /2;
yOffset = height/2;

}

void draw(){
  
  
 background(150);
 
 float x = xOffset + sin (angle) * scalar;
 
 float y = yOffset + cos (angle) * scalar;
 

  //Antena

  

  fill(0);
  ellipse(395, 50, 50, 50);

  //head

  noStroke();
  
  fill (random(255),random(255),random(255));
  
  ellipse( 400,  200, 200,200);

  quad (350, 250, 450, 250, 450, 350, 350, 350  );  // order is mixed but working...

  


  quad (300, 200, 320, 300, 480, 300, 500, 200);




  //wheels



  ellipse(350, 810, 80, 80);
  ellipse(450, 810, 80, 80);

  

  ellipse(275, 760, 60, 60);
  ellipse(525, 760, 60, 60);



  ellipse(290, 700, 40, 40);
  ellipse(500, 700, 40, 40);



  //body
  

  quad (350, 370, 300, 500, 500, 500, 450, 370);

  rect(300, 500, 200, 200);

  ellipse(400, 700, 200, 100);


  //arms



  triangle(250, 430, 300, 450, 250, 570);

  triangle(500, 480, 540, 430, 550, 570);

  ellipse(245, 600, 50, 50);

  ellipse(555, 600, 50, 50);

  //shoulders



  ellipse(280, 450, 80, 80);
  ellipse(520, 450, 80, 80);

  //eye

  fill(255);
  ellipse(395, 200, 100, 45);

 fill(0);
  ellipse(395, 200, 40, 40);
  


 
   angle=+speed;
   }

 