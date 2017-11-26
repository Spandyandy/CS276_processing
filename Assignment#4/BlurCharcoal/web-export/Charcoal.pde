void charcoalish(PImage img) {
  img.loadPixels();
 
  for(int row = 0; row < img.height; row++)
    for(int col = 0; col < img.width; col++)
    {
      color c = img.get(col, row);
      float r = red(c);
      float g = green(c);
      float b = blue(c);
 
      float luminance = (r + g + b) / 3.0;
 
      if (luminance < 128) {
        img.set(col, row, color(0, 0, 0));
      } else {
        img.set(col, row, color(255, 255, 255));
      }
    }
 
  img.updatePixels();
}
void blur(PImage img){
  img.loadPixels();
  
  PImage img1 = img;  //copy of img for storing values

  for(int row = 0; row < img.height; row++){
    for(int col = 0; col < img.width; col++){
      color c;
      float redtotal = 0;
      float greentotal = 0;
      float bluetotal = 0;
      float count = 9.0; //if the center is not on edge (1 center + 8 neighbors)
      
      //iterate through 9 values of rgb
      for(int i = -1; i<=1; i++){
        for(int j = -1; j<=1; j++){
          if(col+j < 0 || row+i < 0){       //if neightbor pixel is negative
            c = color(0,0,0);               //don't add that color value to total
            count--;                        //don't count that pixel
          }            
          else  
            c = img.get(col+j,row+i);      //otherwise, get the color value
          
          //add up all values of rgb
          redtotal += red(c); 
          greentotal += green(c);
          bluetotal += blue(c);
        }
      }
      
      //Average them
      float redAvg = redtotal/count;
      float greenAvg = greentotal/count;
      float blueAvg = bluetotal/count;
      
      //set value to the copy of img
      img1.set(col, row, color(redAvg, greenAvg, blueAvg)); 
    }
  }
  img = img1;
  img.updatePixels();
}
/* @pjs preload="me.jpg"; */
PImage img;
void setup(){
  img = loadImage("me.jpg");
  img.resize(img.width/2,img.height/2);
  size(img.width*3, img.height);
  image(img,0,0);
  charcoalish(img);
  image(img,img.width,0);
  blur(img);
  image(img,img.width*2,0);
}

