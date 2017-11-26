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

