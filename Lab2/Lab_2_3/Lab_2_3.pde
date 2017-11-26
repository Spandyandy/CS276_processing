/*
 *  Grayscale
 *
 *  Convert image to grayscale.
 *
 *  Whenever R=G=B, you get gray;  to get the intensity of the gray, 
 *  average the rgb values.  Output the old and new RGB values and 
 *  display a grayscaled image
 *
 *  Implements the Processing function filter(GRAY);
 *
 *  Created May 2007 by rtomlinson
 *  Modified 24 Sep 2007 by spc
 */

PImage myImage;
long start, end;

void setup() {
  myImage = loadImage("andy.jpg");
  // make room for two images side by side
  size(myImage.width*2, myImage.height);
  
  image(myImage, 0, 0);
  noLoop();
}

void draw() {
  start = System.currentTimeMillis();
  grayscale(myImage);
  end = System.currentTimeMillis();
  image(myImage, myImage.width, 0);
  save("grayscale.jpg");
  println("total time spent: " + (end-start));
  println("average per pixel: " +((end-start)/(double)myImage.pixels.length));
   
}

void grayscale(PImage pi) {
   // for each pixel in pixels array
   pi.loadPixels();

   for (int col = 0; col < pi.width; col++) {
     for (int row = 0; row < pi.height; row ++) {
       // grab the color
       color c = pi.get(col, row);
       // grayscale intensity is average of RGB values
       float gray = red(c) + green(c) + blue(c);
       gray /= 3;
       c = color(gray, gray, gray);
       pi.set(col, row, c);
     }
   }

   pi.updatePixels();
}
