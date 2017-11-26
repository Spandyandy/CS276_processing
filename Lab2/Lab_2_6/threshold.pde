void threshold(PImage pic, int val) {
  pic.loadPixels();
  for(int col = 0; col < pic.width; col++){
    for(int row = 0; row < pic.height; row++){
      //grab the color
      color c = pic.get(col, row);
      float gray = red(c) + green(c) + blue(c);
      if(gray > val){
        c = color(255,255,255);
        pic.set(col,row, c);
      }else{
        c = color(0, 0, 0);
        pic.set(col,row, c);
      }
    }
  }
  pic.updatePixels();
}

