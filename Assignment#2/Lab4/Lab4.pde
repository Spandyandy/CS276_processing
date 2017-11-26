/* @pjs preload= "Andy.jpg" */

PImage origImg, img1, img2,img3;

void setup(){
  origImg = loadImage("Andy.jpg");
  img1 = loadImage("Andy.jpg");
  img2 = loadImage("Andy.jpg");
  img3 = loadImage("Andy.jpg");
  origImg.resize(origImg.width/2, origImg.height/2);
  img1.resize(img1.width/2, img1.height/2);
  img2.resize(img2.width/2, img2.height/2);
  img3.resize(img3.width/2, img3.height/2);
  size(origImg.width*3, origImg.height); 
  noLoop();
}

void draw(){
  mirrorVertical(img1);
  image(img1,0,0);
  mirrorHorizontal(img2);
  image(img2,origImg.width,0);
  mirrorLeftRight(img3);
  image(img3,origImg.width*2,0);
}




void mirrorVertical(PImage pi) {
  img1 = pi;
    int middlePoint = img1.width / 2;
    color leftPixel, rightPixel;

    img1.loadPixels();
    // loop through all rows
    for (int y = 0; y < img1.height; y++) {
       // loop through all columns
       for (int x = 0; x < middlePoint; x++) {
          leftPixel = img1.get(x, y);
          // this is the method without a separate DestinationX variable
          // put the color into the pixel at (width-1) - x
          img1.set(img1.width - 1 - x, y, leftPixel);
       }
    }
    img1.updatePixels();
} 

void mirrorHorizontal(PImage pi){
    img2 = pi;
    int mirrorPoint = img2.height / 2;
    color topPixel;
 
    img2.loadPixels();
    // loop through all columns
    for (int col = 0; col < img2.width; col++) {
      // loop from 0 to just before the mirrorPoint
      for (int row = 0; row < mirrorPoint; row++) {
        topPixel = img2.get(col, row);
        // put the color into the pixel at (height-1) - y
        img2.set(col, img2.height - 1 - row, topPixel);
        }
    }
    img2.updatePixels();
}
  
void mirrorLeftRight(PImage pi) {
  img3 = pi;
  int mirrorPoint = img3.width/2;
  img3.loadPixels();
  for (int row = 0; row < img3.height; row++) {
    for (int col = 0; col < mirrorPoint; col++) {
      color c1 = img3.get(col, row);
      color c2 = img3.get(img3.width - col - 1, row);
      img3.set(col, row, c2);
      img3.set(img3.width - col - 1, row, c1);
    } 
  }
  img3.updatePixels();
}
