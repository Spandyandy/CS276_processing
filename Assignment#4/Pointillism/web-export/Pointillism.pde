/* @pjs preload="paris.jpg"; */
PImage img;
int size = 10;

void setup(){
  img = loadImage("paris.jpg");
  img.resize(img.width/6, img.height/6); //original was too big
  size(854, 534);
  frameRate(1500); //make animation faster
  smooth();
  noStroke();
}

void draw(){
  int x = (int)random(0, img.width); //get random x loc
  int y = (int)random(0, img.height);//get random y loc
  color c = img.get(x,y);            //get color of random cord
  fill(c);                           //color it
  ellipse(x, y, size, size);         //draw a circle with the size 10
}

