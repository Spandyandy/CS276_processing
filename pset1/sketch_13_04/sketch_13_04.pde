PImage img;
void setup() {
  size (300,200);
  img = loadImage("dwp-01.jpg");
  noStroke();
  fill(0);
}
void draw() {
  image(img,20,20);
  rect(20+img.width,20,img.width, img.height);
}
