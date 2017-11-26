background(0);
stroke(255,120);
translate(66,33);
for(int i = 0; i < 18; i++){
  strokeWeight(i); //increase stroke weight
  rotate(PI/12); //accumulation the rotation
  line(0, 0, 55, 0); 
}


