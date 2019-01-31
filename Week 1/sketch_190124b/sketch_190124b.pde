float[] xPos = new float [10];
int size = 60; 

void setup() {
  size(600, 600);
  for(int i = 0; i <xPos.length; i+=1){
   xPos[i] = size/2 + i*width/10; 
  }
}


void draw() {
  background(240);
  for (int i = 0; i < xPos.length; i++) {

    ellipse(xPos[i],xPos[i], size, size);
  }
}
