PImage myImage;
long start, end;

void setup() {
  myImage = loadImage("small.jpg");
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

   for (int col = 0; col < myImage.width; col++) {
     for (int row = 0; row < myImage.height; row ++) {
       color c = myImage.get(col, row);
       // this is all there is to it
       c = color(255 - red(c), 255 - green(c), 255 - blue(c));
       myImage.set(col, row, c);
     }
   }  

   myImage.updatePixels();
}
