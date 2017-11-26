AudioChannel toSound(PImage img, float high, float low){
  AudioChannel sound = new AudioChannel();
  sound.initChannel(sound.frames((img.width * img.height)/4+1000));
  
  for(int i = 0; i < img.height; i++){
    for(int j = 0; j < img.width; j++){
      int p = img.width*j+i;
      color c = img.pixels[p];
      if(c == color(255,0,0))
        sound.samples[p] = high;
      else if( c == color(0, 0 ,255))
        sound.samples[p] = low;
      else
        sound.samples[p] = 0;
    }
  }
  return sound;
}  
