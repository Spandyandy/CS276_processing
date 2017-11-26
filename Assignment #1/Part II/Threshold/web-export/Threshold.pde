/*
 * Andy Kim
 * CS276
 * 9/27/2016
 * Threshold
 *
 */
 
/* @pjs preload="AndyKim.jpg"; */
void threshold(PImage pic, float val) {
  pic.loadPixels();
  for(int col = 0; col < pic.width; col++){
    for(int row = 0; row < pic.height; row++){
      //grab the color
      color c = pic.get(col, row);
      float gray = red(c) + green(c) + blue(c);
      if(gray > val){
        c = color(255,255,255);
        pic.set(col,row, c);
      }else{
        c = color(0, 0, 0);
        pic.set(col,row, c);
      }
    }
  }
  pic.updatePixels();
}

/*
 * Andy Kim
 * CS276
 * 9/27/2016
 * Grayscale
 *
 */
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

/*
 * Andy Kim
 * CS276
 * 9/27/2016
 * Thresholding
 *
 */
 
/* @pjs preload="AndyKim.jpg"; */
 
PImage myImage;

void setup() {
  myImage = loadImage("AndyKim.jpg");
  // make room for two images side by side
  myImage.resize(myImage.width, myImage.height);
  size(myImage.width*2, myImage.height); 
  image(myImage, 0, 0);
}

void draw() {
 grayscale(myImage);
 float val = map(mouseX, 0, myImage.width *2, 0, 255);
 myImage = loadImage("AndyKim.jpg");
 myImage.resize(myImage.width, myImage.height);
 threshold(myImage, val);
 image(myImage, myImage.width, 0);
 save("threshold.jpg");
}

