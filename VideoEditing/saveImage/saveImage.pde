import processing.vidoe.*;
Capture video;
void setup(){
  size(320,240);
  videoImage = new Capture(this, width, height, 30);
  videoImage.start();
}
void captureEvent(Capture videoImage){
  videoImage.read();
}

void draw(){
  image(videoImage, 0 ,0);
  if(mousePressed){
    save("myPicture.jpg");
  }
}
