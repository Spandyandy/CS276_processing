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

void threshold(PImage pic, int val) {
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

PImage myImage;
int xVal, yVal;

void setup() {
  myImage = loadImage("thresh.jpg");
  // make room for two images side by side
  size(myImage.width*2, myImage.height); 
  image(myImage, 0, 0);
  noLoop();
}

void draw() {
 //frameRate(100);
 grayscale(myImage);
 //int val = (int)((mouseX*255/(myImage.width)));
 
 //threshold(myImage, 128);
 //threshold(myImage, 50);
 threshold(myImage, 212);
 //myImage = loadImage("thresh.jpg");
 //threshold(myImage, val);
 
 image(myImage, myImage.width, 0);
 save("thresh.jpg");
}
  

  
  
  

