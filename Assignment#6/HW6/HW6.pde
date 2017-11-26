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
