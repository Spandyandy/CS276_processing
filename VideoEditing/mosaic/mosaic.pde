int PIXSIZE = 6;

import processing.video.*;
Capture videoImage;
void setup(){
  size(320, 240, P3D);
  videoImage = new Capture (this, 320, 240, 24);
  videoImage.start();
}

void draw(){
  videoImage.read();
  videoImage.loadPixels();
  background(255);
  noStroke();
  if(!mousePressed){
    for (int y =0; y < videoImage.height; y += PIXSIZE){
      for( int x = 0; x < videoImage.width; x+=PIXSIZE){
        int index = y* width + x;
        color c = videoImage.pixels[index];
        fill(c);
        rect(x,y,PIXSIZE,PIXSIZE);
      }
    }
  }else{
      println("DUUD");
    }
  }

