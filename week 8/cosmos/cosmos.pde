int stars = 500;  // this numer defines the amount of stars


float [] x = new float [stars];
float [] y = new float [stars];
float [] shade = new float [stars];
float [] diameter = new float [stars];

void setup () {

  size (800, 600);


  for (int i = 0; i < x.length; i++) {
    
    
    //ellipse description

    x [i] = random (1, width);
    y [i] = random (1, height);
    shade [i] = random (100, 220);
    diameter[i] = random (1, 3);
  }
}

void draw () {

  background (0);

  for (int i = 0; i < x.length; i++) {    

    fill(shade[i]);
    ellipse (x[i], y[i], diameter [i], diameter [i]);

    //movement


   // y [i] += random);
    y [i] += 0.1;
    if (y [i]>height) {
      y[i]=0;
    }
  }
}