void draw(){
  background(204);
  //shift the origin to the center
  translate(width/2, height/2);
  //draw the origin
  line(-width/2, 0, width/2, 0); //drwa x-axis
  line(0, -height/2, 0, height/2); //draw y-axis
  //drwa within the new coordinate system
  ellipse(0, 0, 45, 45); //draws at the origin
  ellipse(-width/2, height/2, 45, 45);
  ellipse(width/2, -height/2, 45, 45);
}


