/* @pjs preload= "Andy.jpg" */

PImage img;

void setup(){
  img = loadImage("Andy.jpg");
  image(img,0,0);
  size(img.width, img.height); 
  noLoop();
}

void draw(){
 mirrorLeftRight(img);
  image(img,0,0);
}

// Create a mirror image of the given object   
void mirrorLeftRight(PImage pi) {
  pi.loadPixels();
  for (int row = 0; row < 50; row++) {
    for (int col = 0; col < 50; col++) {
      color c1 = pi.get(col, row);
      color c2 = pi.get(pi.width - col - 1, row);
      pi.set(col, row, c2);
      pi.set(pi.width - col - 1, row, c1);
    } 
  }
  pi.updatePixels();
}
