PImage img;
void setup() {
  size (600,200);
  img = loadImage("dwp-01.jpg");
}
void draw() {
  tint(0,153,204);
  image(img,0,0);
  noTint();
  image(img,200,0);
}
