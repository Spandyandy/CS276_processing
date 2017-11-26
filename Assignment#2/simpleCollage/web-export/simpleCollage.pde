/* @pjs preload= "league.jpg" */

PImage img;

void setup(){
  img = loadImage("league.jpg");
  size(img.width, img.height);
}

void draw(){
  tint(255, 100);
  image(img, 0, 0, width, height);
  
  float transparency = map(mouseY, 0, height, 0, 255);
  
  pushMatrix();
  translate(width/2-150, height/2);
  scale(0.4);
  rotate(PI/8);
  tint(255, transparency/0.5);
  image(img, 0, 0);
  popMatrix();
  
  pushMatrix();
  translate(width/2-400, height/2-200);
  tint(255, transparency/1.2);
  scale(0.4);
  rotate(PI/-14);
  image(img,0,0);
  popMatrix();
  
  pushMatrix();
  translate(width/2+200,height/6);
  scale(0.28);
  rotate(PI/6);
  tint(255,transparency/1.5);
  image(img,0,0);
  popMatrix();
  
  pushMatrix();
  translate(width/2+200,height/6);
  scale(0.2);
  rotate(PI/-6);
  tint(255,transparency/0.8);
  image(img,0,0);
  popMatrix();
}
  

