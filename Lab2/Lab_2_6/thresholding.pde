PImage myImage;
int xVal, yVal;

void setup() {
  myImage = loadImage("thresh.jpg");
  // make room for two images side by side
  size(myImage.width*2, myImage.height); 
  image(myImage, 0, 0);
  noLoop();
}

void draw() {
 //frameRate(100);
 grayscale(myImage);
 //int val = (int)((mouseX*255/(myImage.width)));
 
 //threshold(myImage, 128);
 //threshold(myImage, 50);
 threshold(myImage, 212);
 //myImage = loadImage("thresh.jpg");
 //threshold(myImage, val);
 
 image(myImage, myImage.width, 0);
 save("thresh.jpg");
}
  

  
  
  
