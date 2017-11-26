int dragX, dragY, moveX, moveY;

void setup(){
  size(100,100);
  noStroke();
}

void draw(){
  background(204);
  fill(0);
  ellipse(dragX, dragY, 33, 33); //black circle
  fill(153);
  ellipse(moveX, moveY, 33, 33);
}

void mouseMoved(){
  moveX = mouseX;
  moveY = mouseY;
}

void mouseDragged(){
  dragX = mouseX;
  dragY = mouseY;
}


