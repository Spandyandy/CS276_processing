PImage img1, img2, img3;

void setup(){
  //PImage[] images = {img1,img2,img3};
  img1 = loadImage("fall.jpg");
  img2 = loadImage("girlInRain.jpg");
  img3 = loadImage("joker.jpg");
  
  img1.resize(img1.width/3, img1.height/3);
  img2.resize(img2.width/3, img2.height/3);
  img3.resize(img3.width/2, img3.height);
  
  size(img1.width+img2.width+img3.width, img2.height);
}

void draw(){
  charcoal(img1);
  posterize(img2);
  sepia(img3);
  
  image(img1, 0, 0);
  image(img2, img1.width, 0);
  image(img3, img2.width+img1.width, 0);
  
}
  

