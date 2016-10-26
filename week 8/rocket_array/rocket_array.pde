Rocketship [] ship = new Rocketship [10];



void setup () {

  size(800, 600);

  for (int i = 0; i < ship.length; i++) {


    float x = random (1, width);
    float y=  random (1, height);
    float size = random (5, 100);
    color theColor = color(random(1, 255), random(1, 255), random(1, 255));

    ship [i] = new Rocketship (x, y, size, theColor);
  }
}

void draw () {

  background (0);



  if (keyPressed) {

    for (Rocketship s : ship) { //fot the duration od the loop "s" represent "ship"
      s.move();
    }
  } else { 
    for (Rocketship s : ship) {
      s.hover();
    }
  }

  for (Rocketship s : ship) {
    s.display();
  }
}