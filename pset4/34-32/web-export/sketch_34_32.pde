PImage arch = loadImage("Andy.jpg");
size(arch.width, arch.height);
int count = width * height;
arch.loadPixels();
loadPixels();
for(int i = 0; i < count; i += 3){
  pixels[i] = arch.pixels[i];
}
updatePixels();






