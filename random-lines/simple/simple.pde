int count = 700;

int[] colors = new int[]{
  color(255, 0, 0),
  color(244, 241, 65),
  color(0, 255, 8),
  color(0, 255, 250),
  color(21, 0, 255),
  color(255, 0, 0),
  color(66, 134, 244),
  color(68, 244, 65),
  color(50, 214, 255),
  color(197, 96, 255)
};

void setup() {
    size(900,700);
    background(0);
    smooth();
    noLoop();
}

void draw() {
  
   for(int i = 0; i < count; i++){
     stroke(colors[int(random(0,10))]);
     for(int j = 0; j < 900; j++){
       point(j, i);
     }
    }
   //pixelateImage(30);
}
