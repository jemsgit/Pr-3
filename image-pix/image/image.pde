String filename = "124.jpg";
PImage p;

void setup() {
  p = loadImage(filename);           // load
  size(800, 700);           // set size to that of the image
  colorMode(HSB, 255);
  image(p, 0, 0);
}

void draw(){
   lineOnImage(mouseX);
}

void lineOnImage(int xPos){

    for (int y=0; y<height; y++) {
      stroke(p.get(xPos, y));
      line(xPos, y, width, y);
    }

  
}
