  
Person guy1;
 


void setup (){
  
  size(800, 600);
  
guy1 = new Person(width/2, height/2, 150,150,150,150);


  
  
  
}

void draw (){
  
  background (255);
  
  
  
  
  if (keyPressed){
   
  guy1.move();
  
  
}
 
  

 guy1.display ();
 
}