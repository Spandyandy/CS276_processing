import krister.Ess.*;

AudioChannel sound1, sound2, sound3;
AudioChannel conv1, conv2, conv3;
PImage mapImg1, mapImg2, mapImg3;

void setup(){
  background(255);
  Ess.start(this);
  
  sound1 = new AudioChannel("hb.mp3");
  sound2 = new AudioChannel("a.mp3");
  sound3 = new AudioChannel("c1.mp3");
  
  mapImg1 = mapping(sound1, 0.03, -0.03);
  mapImg2 = mapping(sound2, 0.02, -0.04);
  mapImg3 = mapping(sound3, 0.04, -0.02);

  int imagelength = mapImg1.width/6;
  
  size(imagelength*3, imagelength);
  image(mapImg1, 0, 0, imagelength, imagelength);
  image(mapImg2, imagelength, 0, imagelength, imagelength);
  image(mapImg3, imagelength*2, 0, imagelength, imagelength);
  
  mapImg1.save("hb.png");
  mapImg2.save("a.png");
  mapImg3.save("c1.png");
}

void draw(){
  Ess.start(this);
}

void mouseClicked(){
  int imagelength = mapImg1.width/6;
  if(mouseX > 0 && mouseX < imagelength && mouseY < imagelength){
    conv1 = toSound(mapImg1, 0.03, -0.03);
    conv1.play(Ess.FOREVER);
  }else if(mouseX > imagelength && mouseX < imagelength*2 && mouseY < imagelength){
    conv2 = toSound(mapImg2, 0.02, -0.04);
    conv2.play(Ess.FOREVER);
  }else{
    conv3 = toSound(mapImg3, 0.04, -0.02);
    conv3.play(Ess.FOREVER);
  }
}

public void stop() {
 Ess.stop();
 super.stop();
}
