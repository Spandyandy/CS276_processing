import krister.Ess.*;

AudioChannel myChannel;

void setup() {
   size(700,200);

 // start up Ess
 Ess.start(this);

 // load a sound file into a new Channel
 myChannel=new AudioChannel("On Duty.mp3");

 // start the sound looping forever
 myChannel.play(Ess.FOREVER);
 for(int i = 0; i < 520; i++){
    line(i,(100+myChannel.samples[i*200]*100),i,100);
    line(i,(100+myChannel.samples[i*200]*-100),i,100);
  }
}

// this keeps the sketch running
void draw() {
}

// we are done, clean up Ess

public void stop() {
 Ess.stop();
 super.stop();
}
