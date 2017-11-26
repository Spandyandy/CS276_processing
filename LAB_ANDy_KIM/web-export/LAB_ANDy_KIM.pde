float x = 33;
float y = 60;

void setup(){
  size(200, 200);
  background(204);
  PFont pf = loadFont("Baskervill-Bold-16.vlw");
  textFont(pf);
  noStroke(0);
}

void draw(){
  fill(204, 120);
  rect(0, 0, width, height);
  fill(0);
  if((mouseX >= x)&& (mouseX <= x+55) && 
      (mouseY >= y-24) && (mouseY <= y)) {
        x+= random(-2, 2);
        y+= random(-2, 2);
      }
      text("tickle", x, y);
}

