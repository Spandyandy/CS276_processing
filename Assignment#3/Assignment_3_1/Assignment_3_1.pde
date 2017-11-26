PFont zigBlack;
String words[];

void setup(){
  size (500, 300);
  zigBlack=loadFont("MVBoli-32.vlw");
  textFont(zigBlack);
  fill(0);
  words = loadStrings("Einstein.txt");
  noLoop();
}

void draw() {
  background(204);
  fill(36, 130, 49);
  text(words[(int)random(0, words.length)], 0, (int)random(20, 80));
  fill(200, 50, 12);
  text(words[(int)random(0, words.length)], 0, (int)random(81, 160));
  fill(100, 230, 189);
  text(words[(int)random(0, words.length)], 0, (int)random(161, 240));
}

