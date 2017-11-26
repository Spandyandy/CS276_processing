PImage photo;
int halfImage, dragX, dragY;

void setup(){
  //background(255);
  photo = loadImage("pic.jpg");
  //size(photo.width*2, photo.height*2);
  size(photo.width, photo.height);
  halfImage = width * height/2;
  photo.loadPixels();
  for(int i = 0; i < halfImage; i++){
    photo.pixels[i+halfImage] = photo.pixels[i];
  }
  photo.updatePixels();
  
  println("number of pixels: " + photo.pixels.length);
  println("image height: " + photo.height);
  println("image width: " + photo.width);
 
}

void draw(){
  background(255); //better here then in setup()
  image(photo,dragX,dragY);
}

void mouseDragged(){
  dragX = mouseX;
  dragY = mouseY;
}
