int x = 0;
int y = 0;
int space = 30;
void setup(){
  size(900, 900);
  background(0);
  strokeWeight(5);
}

void draw(){
  stroke(random(255),random(255),random(255));
  if(random(1) > 0.5){
    line(x, y, x + space, y + space);
  } else {
    line(x, y + space, x + space, y);
  }
  x+=space;
  if(x > width) {
    x = 0;
    y+=space;
  }
  
}
