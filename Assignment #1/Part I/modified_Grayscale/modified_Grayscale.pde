PImage myImage;
long start, end;

void setup() {
  myImage = loadImage("large.jpg");
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

   for (int y = 0; y < pi.height; y++) {
     for (int x = 0; x < pi.width; x++) {
       int i = y*pi.width+x;
       color c = pi.pixels[i];
       // grayscale intensity is average of RGB values
       float gray = red(c) + green(c) + blue(c);
       gray /= 3;
       pi.pixels[i] = color(gray, gray, gray);;
     }
   }

   pi.updatePixels();
}
