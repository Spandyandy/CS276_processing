float x = 130;
float y = 120;
float noiseScale = 0.02;

void setup(){
  size(300, 300);
  textSize(24);
  noStroke();
}

void draw(){
  fill (204, 120);
  rect (0, 0, width, height);
  fill(0);
  
  float noiseVal = 5 * noise((mouseX+x)*noiseScale, mouseY*noiseScale);
  
  if ((mouseX >= x) && (mouseX<= x + 55) &&
       (mouseY >= y-24) && (mouseY <= y)){
         x+=random(-1, 1)*noiseVal;
         y+=random(-1, 1)*noiseVal;
       }
       text("tickle",x, y);
}

