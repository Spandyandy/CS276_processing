/*
 * Andy Kim
 * CS276
 * 9/27/2016
 * posterize
 */
 
 /* @pjs preload="AndyKim.jpg"; */

 
void posterize(PImage img, color[] rgb) {
  img.loadPixels();
  for(int row = 0; row < img.height; row++)
    for(int col = 0; col < img.width; col++)
    {
      color c = img.get(col, row);
      float r = red(c);
      float g = green(c);
      float b = blue(c);
 
      if (r < 64) {
         r = red(rgb[0]);
      }  else if (r < 128) {
         r = red(rgb[1]);
      } else if (r < 192) {
         r = red(rgb[2]);
      } else {
         r = red(rgb[3]);
      }
 
      if (g < 64) {
        g = green(rgb[0]);
      } else if (g < 128) {
        g = green(rgb[1]);
      } else if (g < 192) {
        g = green(rgb[2]);
      } else {
        g = green(rgb[3]);
      }
 
      if (b < 64) {
        b = blue(rgb[0]);
      } else if (b < 128) {
        b = blue(rgb[1]);
      } else if (b < 192) {
        b = blue(rgb[2]);
      } else {
        b = blue(rgb[3]);
      }
 
     img.set(col, row, color(r, g, b));
    }
 
  img.updatePixels();
}
