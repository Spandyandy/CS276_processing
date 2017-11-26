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
