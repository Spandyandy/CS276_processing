/* @pjs preload= "Andy.jpg" */

PImage img;

void setup(){
  img = loadImage("Andy.jpg");
  size(img.width, img.height); 
  noLoop();
}
void draw(){
  mirrorPortionHoriz(img, 0, 0, 100, 100);
  //mirrorPortionVert(img, 100, 200, 300, 600);
  image(img,0,0);
}
