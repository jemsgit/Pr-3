int itemSize = 57;
int eyeRad = 45;
int eye = 20;
int count = 50;
int[] colorsR;

int[] colors = new int[]{
  color(255, 0, 0),
  color(255, 229, 0),
  color(0, 255, 8),
  color(0, 255, 250),
  color(21, 0, 255)
};

void setup() {
  background(255);
  smooth();
  size(1200, 1000);  // set size to that of the image
  colorsR = new int[count*count];
  for(int i = 0; i < count*count; i++){
    colorsR[i] = colors[int(random(5))];
  }
}

void draw(){
   for(int i = 0; i < count; i++){
     for(int j = 0; j < count; j++){
         strokeWeight(2);
         printEye(i*itemSize, j*itemSize, i*count + j);
     }
   }
   //saveFrame("line-######.png");
}

void printEye(int xPos, int yPost, int index){
    fill(255, 253, 206);
    ellipse(xPos + itemSize/2 + 2, yPost + itemSize/2 + 2, eyeRad, eyeRad);
    double path = calculate(xPos + itemSize/2 + 2, yPost + itemSize/2, mouseX, mouseY);
    double sn = Math.abs(yPost + itemSize/2 + 2 - mouseY) / path;
    double cs = Math.abs(xPos + itemSize/2 + 2 - mouseX) / path;
    double addY = sn * 10;
    double addX = cs * 10;
    if(mouseX < xPos + itemSize/2 + 2){
        addX*=-1;
    }
    if(mouseY < yPost + itemSize/2 + 2){
        addY*=-1;
    }
    fill(colorsR[index]);
    ellipse(xPos + itemSize/2 + 2 + (float)addX, yPost + itemSize/2 + 2 + (float)addY, eye, eye);
    fill(0);
    ellipse(xPos + itemSize/2 + 2 + (float)addX, yPost + itemSize/2 + 2 + (float)addY, 3, 3);
    
}

double calculate(int x1, int y1, int x2,int y2){
    return Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2));
}
