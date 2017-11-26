import krister.Ess.*;

AudioChannel myChannel;

void setup() {
  size(100,100);
  Ess.start(this);                
  myChannel = new AudioChannel("nuc.wav");
  echo(myChannel, 3000);
}

void echo(AudioChannel ac, int t){
  AudioChannel copy = ac;
  ac.adjustChannel(ac.frames(t), Ess.END);
    for (int i = 0; i < copy.size-t; i++) {
      copy.samples[i] += ac.samples[i+t];
    }  
  copy.play();
}

public void stop(){
  Ess.stop();
  super.stop();
}

