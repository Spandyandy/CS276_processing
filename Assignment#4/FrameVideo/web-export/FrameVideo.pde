
import processing.video.*;

Capture video;
int size = 8;

void setup() {
  size(640, 480);
  video = new Capture(this, width, height, 30);
  video.start();
  smooth();
}

void draw() {
  if (video.available()) {
    video.read();
    video.loadPixels();
    image(video, 0, 0);

    for (int row = 0; row < video.height; row+=size)
      for (int col = 0; col < video.width; col+=size)
      {
        color c = video.get(col, row);
        fill(c);
        rect(col, row, size, size);
        stroke(0);
      }
  }
}


