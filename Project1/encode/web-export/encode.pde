/* @pjs preload="nature.jpg"; */
String message[];
PImage img;
int messageLength, imageSize;
color c, previousC;

void encode(){
  message = loadStrings("message.txt");
  img = loadImage("nature.jpg");
  
  messageLength = message[0].length();
  imageSize = img.width*img.height;
  previousC = img.get(0,0);
  c = color(messageLength, ((previousC>>8) & 0xFF), (previousC & 0xFF));
  img.set(0,0,c);
  
  if(messageLength > imageSize)
    throw new Error("Error");
  else{
    for(int i = 0; i < messageLength * 8; i++){
      previousC = img.get(i+1, 0);
      c = color(byte(message[0].charAt(i/8)), ((previousC>>8) & 0xFF), (previousC & 0xFF));
      img.set(i+1, 0, c);
    }
  }
  img.save("encoded.png");
}
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
void setup(){
  encode();
  decode();
}

