PImage myImage;
long start, end;

void setup() {
  myImage = loadImage("large.jpg");
  size(myImage.width*2, myImage.height);
  image(myImage, 0, 0);
  noLoop();
}

void draw() {
  start = System.currentTimeMillis();
  negativize(myImage);
  end = System.currentTimeMillis();
  image(myImage, myImage.width, 0);
  //save("negative.jpg");
  println("total time spent: " + (end-start));
  println("average per pixel: " +((end-start)/(double)myImage.pixels.length));
}

/* negativize(myImage)
 *  reverse the image by subtracting each color value from max color value
 *  (assume 255).
 */
void negativize(PImage myImage) {
   myImage.loadPixels();

   for (int y = 0; y < myImage.height; y++) {
     for (int x = 0; x < myImage.width; x ++) {
       int i = y*myImage.width + x;
       color c = myImage.pixels[i];
       // this is all there is to it
       c = color(255 - red(c), 255 - green(c), 255 - blue(c));
       myImage.pixels[i] = c;
     }
   }  

   myImage.updatePixels();
}

