import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class single_loop_Invert extends PApplet {

PImage myImage;
long start, end;

public void setup() {
  myImage = loadImage("large.jpg");
  size(myImage.width*2, myImage.height);
  image(myImage, 0, 0);
  noLoop();
}

public void draw() {
  start = System.currentTimeMillis();
  negativize(myImage);
  end = System.currentTimeMillis();
  image(myImage, myImage.width, 0);
  //save("negative.jpg");
  println("total time spent: " + (end-start));
  println("average per pixel: " +((end-start)/(double)myImage.pixels.length));
}

/* negativize(myImage)
 *  reverse the image by subtracting each color value from max color value
 *  (assume 255).
 */
public void negativize(PImage myImage) {
   myImage.loadPixels();

   for (int i = 0; i< myImage.pixels.length;i++) {
       int c = myImage.pixels[i];
       // this is all there is to it
       c = color(255 - red(c), 255 - green(c), 255 - blue(c));
       myImage.pixels[i] = c;
     }
     myImage.updatePixels();
   }  
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "single_loop_Invert" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
