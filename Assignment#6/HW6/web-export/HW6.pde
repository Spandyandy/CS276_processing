import krister.Ess.*;

AudioChannel chan1, chan2, chan3;

void setup() {
 Ess.start(this);
 
 chan1 = new AudioChannel("GAir.mp3");
 chan2 =new AudioChannel("Reverved_dog.wav");
 chan3 = new AudioChannel("kidlaugh.wav");
 
 changePitch(chan1, 2);
 normalize(chan2);
 volume(chan3, 2.5);

 chan1.play();
 chan2.play(Ess.FOREVER);
 chan3.play(Ess.FOREVER);
}
void changePitch(AudioChannel ac, int pitch){
  int initialSize = ac.size;
  AudioChannel copy = ac;
  for (int j = 0, i = 0; j < initialSize/pitch; j++, i+= pitch) {
     copy.samples[j] = ac.samples[i];
  }
}
void stop() {
  Ess.stop();
  super.stop();
}
void normalize(AudioChannel chan) {
  float largest = 0;
    for (int i = 0; i < chan.size; i++) {
      if (largest < chan.samples[i])
         largest = chan.samples[i];
    }
  //println(largest);
  
  float mult = 1.0 / largest;
 
  for (int i = 0; i < chan.size; i++) {
    chan.samples[i] *= mult;
  }
}

void volume(AudioChannel ac, double vol) {
  for (int i = 0; i < ac.size; i++) {
     ac.samples[i] *= vol;
  }
}

