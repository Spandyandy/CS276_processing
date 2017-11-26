void volume(AudioChannel ac, double vol) {
  for (int i = 0; i < ac.size; i++) {
     ac.samples[i] *= vol;
  }
}
