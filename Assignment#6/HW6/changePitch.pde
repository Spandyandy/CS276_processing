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
