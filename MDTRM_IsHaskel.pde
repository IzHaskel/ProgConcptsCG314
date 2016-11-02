//Kill the fly touching it with the negative space of the antena to get points

//Follows mouse direction, it's hard to get it on the antena since the points will be counted only on specific coordinates 



//PImage img; //wasn't able to run the fly as an image, changed the code to adapt it with a ball

//img = loadImage ("fly.png");


//image (img,100,0);


float  antena=40;





int x; 
int y;
int gameScore=0;

int changeX= 6;
int changeY= 6;
int gameOver=0;


void setup()
{
  
  size(1000, 1000);
  x=(int)random(width);
  y=(int)random (height);




  textSize(30);
}
void draw()
{
  if (gameOver==0)
  {
    background (163, 252, 231); 
    text("SCORE:"+gameScore+"0", width/3, height-10);

    
    //bot

    

    //Antena

    fill(0);
    ellipse(mouseX, mouseY, 50, antena);


    fill(163, 252, 231);
    ellipse(mouseX, mouseY, 25, 25);

    //head

    noStroke();
    fill(0);
    ellipse(mouseX + 5, mouseY + 100, 100, 100);


   


    //rolls



    ellipse(mouseX - 35, mouseY +460, 40, 40);
    ellipse(mouseX + 45, mouseY +460, 40, 40);


    ellipse(mouseX -80, mouseY +415, 30, 30);
    ellipse(mouseX +90, mouseY +415, 30, 30);


    ellipse(mouseX -45, mouseY +390, 20, 20);
    ellipse(mouseX + 65, mouseY +390, 20, 20);



    //body
   
   
    quad (mouseX -5, mouseY +175, mouseX -45, mouseY +250, mouseX + 55, mouseY +250, mouseX + 15, mouseY +175);

    rect(mouseX - 45, mouseY + 250, 100, 150);

    ellipse(mouseX + 5, mouseY +400, 100, 50);


    //arms

  
    triangle(mouseX -110, mouseY + 300, mouseX -45, mouseY + 200, mouseX -55, mouseY + 200);

    triangle(mouseX + 120, mouseY + 300, mouseX + 60, mouseY + 200, mouseX + 50, mouseY + 200);

    ellipse(mouseX -110, mouseY + 300, 25, 25);

    ellipse(mouseX + 120, mouseY + 300, 25, 25);

    //shoulders

   

    ellipse(mouseX -45, mouseY + 200, 40, 40);
    ellipse(mouseX +55, mouseY + 200, 40, 40);


    //eye

    fill(255);
    ellipse(mouseX, mouseY + 100, 50, 22);

    fill(0);
    ellipse(mouseX, mouseY + 100, 20, 20);










    //ball front


    fill (random (25), random (46), random (456));
    ellipse(x, y, 20, 20);







// coordinates of the ball (max positions on the screen)

    x=x+changeX;
    y=y+changeY;


    if (x<0 | x>width)
    {
      changeX=-changeX;
    }
    if (y<0 | y>height)
    {
      changeY=-changeY;
    }



    //TO SCORE
    

    if (x>mouseX -1 && x<mouseX+1)


    {

      //ball goes in a diferent direction
      
      changeX=-changeX;
      changeY=-changeY; 
      gameScore++;
    } 
    
  } 
  
}