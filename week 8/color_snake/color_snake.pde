int amount = 1000;  // lenght snake


float [] x = new float [amount];
float [] y = new float [amount];

void setup () {

  size (800, 600);

  noStroke ();
}

void draw () {

  background (255);

  for (int i = x.length -1; i>0; i--) { 

    x[i] = x[i-1] ;
    y[i] = y[i-1] ;
  }

  x[0] = mouseX ;
  y[0] = mouseY ;
  
  for (int i = 0; i < x.length; i++) { 
    
    fill(i*5);
    ellipse(x[i],y[i],30,30);
  }
}
  
  