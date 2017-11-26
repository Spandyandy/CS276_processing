/* @pjs preload="me.jpg"; */
PImage img;
void setup(){
  img = loadImage("me.jpg");
  img.resize(img.width/2,img.height/2);
  size(img.width*3, img.height);
  image(img,0,0);
  charcoalish(img);
  image(img,img.width,0);
  blur(img);
  image(img,img.width*2,0);
}
