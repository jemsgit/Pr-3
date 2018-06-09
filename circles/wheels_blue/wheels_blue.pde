int diam = 10;
float centX, centY;

void setup(){
  size(800, 600);
  frameRate(24);
  smooth(); 
  background(198, 241, 255); 
  centX = width/2; 
  centY = height/2; 
  strokeWeight(4); 
  noFill();
  
}

void draw(){
  if (diam <= 1000) {
    stroke(random(0,255), random(0,255), random(0,255));
    ellipse(centX, centY, diam + random(-20,20), diam + random(-100,50));
    diam += 7; 
  }
}
