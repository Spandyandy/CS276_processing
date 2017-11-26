int frame = 0;

void setup(){
  size(100,100);
}

void draw(){
  if(frame>120){
    noLoop();
    background(0);
  }else{
    background(204);
    line(mouseX, 0, mouseX, 100);
    line(0, mouseY, 100, mouseY);
    frame++;
  }
}

void mousePressed(){
  loop();
  frame = 0;
}
