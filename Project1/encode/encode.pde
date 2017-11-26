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
