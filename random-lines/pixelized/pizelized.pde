int count = 700;

void setup() {
    size(900,700);
    background(0);
    smooth();
    noLoop();
}

void draw() {
  
   for(int i = 0; i < count; i++){
     stroke(random(0,255), random(0,255), random(0,255));
     for(int j = 0; j < 900; j++){
       point(j, i);
     }
    }
   pixelateImage(15);
}

void pixelateImage(int pxSize) {
  loadPixels();
  // use ratio of height/width...
  float ratio;
  if (width < height) {
    ratio = height/width;
  }
  else {
    ratio = width/height;
  }
  
  int pxH = int(pxSize * ratio);
  
  noStroke();
  for (int x=0; x<width; x+=pxSize) {
    for (int y=0; y<height; y+=pxH) {
      fill(get(x, y));
      rect(x, y, pxSize, pxH);
    }
  }
}
