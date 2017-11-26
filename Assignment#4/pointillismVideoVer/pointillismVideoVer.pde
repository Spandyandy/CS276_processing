import processing.video.*;

Capture video;
int numPixels;
int size = 10;

void setup(){
  size(640, 480);
  video = new Capture(this, width, height, 30);
  video.start();
  numPixels = video.width * video.height;
  smooth();
  noStroke();
}

void draw(){
  if(video.available()){
    video.read();
    video.loadPixels();
    
    image(video, 0, 0);
    for(int i = 0; i < numPixels/48; i++){
      int x = (int)random(0, video.width);
      int y = (int)random(0, video.height);
      color c = video.get(x,y);
      fill(c);
      ellipse(x, y, size, size);
    }
  }
}
