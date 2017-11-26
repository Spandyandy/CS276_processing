PFont Segoe;
float x = 0;
float speed = 1.0;

void setup() {
  size(200,200);
  Segoe = createFont("SegoeUIBlack-48.vlw", 20);
  textFont(Segoe);
  smooth();
}

void draw() {
  background(255);

  // Add the current speed to the x location.
  x += speed;
  
  if (key == CODED) {
    if (keyCode ==UP){
      x += speed * 2;
    }
    else if (keyCode ==DOWN){
      x -= speed * 0.8; 
    }
  }

  if ((x > width) || (x < 0)) {
    // If the object reaches either edge, multiply speed by -1 to turn it around.
    speed = speed * -1;
  }

  // Display circle at x location
  stroke(0);
  fill(175);
  ellipse(x,100,32,32);
  text("(" + (int)x + ", 100" + ")", x - 40, 100+32);
}

