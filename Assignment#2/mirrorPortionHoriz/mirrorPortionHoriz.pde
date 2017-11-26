
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
