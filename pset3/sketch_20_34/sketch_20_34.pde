float offset = 50.0;
float scaleVal = 35.0;
float angleInc = PI/28.0;

void setup(){
  size(700,100);
  noStroke();
  fill(0);
}

void draw(){
  background(204);
  float angle = 0.0;
  for(int x = 0; x < width; x += 5){
    float y = offset + (sin(angle)* scaleVal);
    rect(x,y,2,4);
    angle += angleInc;
  }
}
