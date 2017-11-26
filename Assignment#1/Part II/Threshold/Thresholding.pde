/*
 * Andy Kim
 * CS276
 * 9/27/2016
 * Thresholding
 *
 */
 
/* @pjs preload="AndyKim.jpg"; */
 
PImage myImage;

void setup() {
  myImage = loadImage("AndyKim.jpg");
  // make room for two images side by side
  myImage.resize(myImage.width/3, myImage.height/3);
  size(myImage.width*2, myImage.height); 
  image(myImage, 0, 0);
}

void draw() {
 grayscale(myImage);
 float val = map(mouseX, 0, myImage.width *2, 0, 255);
 myImage = loadImage("AndyKim.jpg");
 myImage.resize(myImage.width/3, myImage.height/3);
 threshold(myImage, val);
 image(myImage, myImage.width, 0);
 save("threshold.jpg");
}
