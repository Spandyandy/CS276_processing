/* @pjs preload="nature.jpg"; */
String message1;
PImage dImg;
int dMessageLength, redValue;

void decode(){
  dImg = loadImage("encoded.png");
  
  //message length is stored in cordinate (0,0)
  dMessageLength = (dImg.get(0,0) >> 16) & 0xFF;  
  message1 = "";
  
  //decoding
  for(int i = 0; i < dMessageLength * 8; i++){
    if(i % 8 == 0){
      redValue = (dImg.get(i+1,0) >> 16) & 0xFF;       
      message1 += char(redValue);
    }
  }
  
  
  //show message
  size(360,500);
  fill(200,50,50);
  textSize(32);
  text(message1, 30, height/2);
}
