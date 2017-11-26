
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
