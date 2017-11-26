/*
 * Andy Kim
 * CS276
 * 9/27/2016
 * posterize_test
 *
 */
 

PImage img;

color[] col1 = {color(23, 165, 213),
                  color(190, 46, 167),
                  color(240,236,73),
                  color(71, 10, 198)};
               
color[] col2 = {color(123, 255, 13),
                  color(90, 246, 67),
                  color(40,36,273),
                  color(111, 210, 98)};      

color[] col3 = {color(223, 1, 113),
                  color(40, 146, 255),
                  color(140, 136, 173),
                  color(211, 110, 19)};    
                  
color[] col4 = {color(150, 150, 150),
                  color(150, 150, 150),
                  color(15, 250, 15),
                  color(15, 250, 15)};  
                  
color[] col5 = {color(205, 50, 15),
                  color(250, 50, 150),
                  color(250, 50, 150),
                  color(225, 50, 15)};                 
                 
void setup(){
 img = loadImage("AndyKim.jpg");
 img.resize(img.width/2, img.height/2);
 size(img.width*3, img.height*2);
 image(img, 0,0);
 noLoop();
}


void draw(){
  posterize(img, col1);
  image(img, img.width, 0);
  posterize(img, col2);
  image(img, img.width*2, 0);
  posterize(img, col3);
  image(img, 0, img.height);
  posterize(img, col4);
  image(img, img.width, img.height);
  posterize(img, col5);
  image(img, img.width*2, img.height);
}
