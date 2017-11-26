float x = 0.0;
float y = 50.0;
float angle = 0.0;
float speed = 0.5;

void setup(){
  size(100,100);
  background(0);
  stroke(255,130);
  randomSeed(121); //Force the same random value
}

void draw(){
  angle += random(-0.3, 0.3);
  x += cos(angle) * speed;
  y += sin(angle) * speed;
  translate(x,y);
  rotate(angle);
  line(0,-10,0,10);
}


