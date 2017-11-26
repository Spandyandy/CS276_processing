background(0);
noStroke();
fill(255, 48);
translate(33, 66);     //set initial offset
for(int i = 0; i < 12; i++){  //12 repetitions
  scale(1.2);                 //accumulate the scaling
  ellipse(4,2,20,20);
}


