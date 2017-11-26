PFont font;
String stocks[];
float xLoc, speed = 3;
int i = 0;

void setup(){
  size(1000,700);
  
  font = loadFont("Dialog.plain-48.vlw");
  textFont(font);
  textSize(24);
  
  stocks = loadStrings("stocklist.txt");
}

void draw(){
  background(0);
  textLeading(0);
  fill(255, 255, 23);
  textAlign(LEFT);
  text(stocks[i], xLoc, 300); 
    xLoc -= speed;
    
  if (key == CODED) {
    if (keyCode ==UP){
      speed = 6;
    }
    else if (keyCode ==DOWN){
      speed = 3; 
    }
  }
  
  float twidth = textWidth(stocks[0]);
  if (xLoc <= -twidth) {
    xLoc = width; 
    i = (int)random(0, stocks.length);
  }
}
