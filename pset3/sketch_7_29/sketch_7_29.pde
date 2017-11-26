void setup(){
  size(100,100);
  noLoop(); //draw only happens once
}

void draw(){
  background(204);
  line(mouseX, 0, mouseX, 100);
  line(0, mouseY, 0, mouseY);
}

void mousePressed(){
  redraw();
}
