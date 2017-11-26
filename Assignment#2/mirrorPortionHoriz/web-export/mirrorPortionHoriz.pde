
void mirrorPortionHoriz(PImage pi, int ix, int iy, int fx, int fy) {
    color topPixel;
 
    pi.loadPixels();
    // loop through all columns
    for (int col = iy; col < fy; col++) {
      // loop from 0 to just before the mirrorPoint
      for (int row = ix; row < fx; row++) {
        topPixel = pi.get(col, row);
        // put the color into the pixel at (height-1) - y
        pi.set(col, pi.height - 1 - row, topPixel);
        }
    }
    pi.updatePixels();
  }

void mirrorPortionVert(PImage pi, int ix, int iy, int fx, int fy) {
    color leftPixel, rightPixel;

    pi.loadPixels();
    // loop through all rows
    for (int y = iy; y < fy; y++) {
       // loop through all columns
       for (int x = ix; x < fx; x++) {
          leftPixel = pi.get(x, y);
          // this is the method without a separate DestinationX variable
          // put the color into the pixel at (width-1) - x
          pi.set(pi.width - 1 - x, y, leftPixel);
       }
    }
    pi.updatePixels();
} 
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

