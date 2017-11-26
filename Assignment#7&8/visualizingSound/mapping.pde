PImage mapping(AudioChannel sound, float high, float low){
  int imgWidth = (int)sqrt(sound.size);
  int imgHeight = (int)sqrt(sound.size);
  PImage img = createImage(imgWidth, imgHeight, RGB);
  
  img.loadPixels();
  for(int i = 0; i < img.height; i++){
    for(int j = 0; j < img.width; j++){
      int p = img.width*j+i;
      if(sound.samples[p] > high)
        img.pixels[p] = color(255,0,0);
      else if(sound.samples[p] < low)
        img.pixels[p] = color(0,0,255);
      else
        img.pixels[p] = color(0,255,0);
    }
  }    
  img.updatePixels();
  
  println("Red Range = " + high + " to 1");
  println("Green Range = " + low + " to " + high);
  println("Blue Range = " + " -1 to " + low);
  println();
  
  return img;
}
