PVector position; 
float theta = 0; 
int orbitSize = 300; 
int yIncrement;

void setup() {
  size (600, 600); 
  background(0);
  position = new PVector (20, 20);
}

void draw () {
  background(245);

  theta +=.01; 

  position.x = width/2 + sin(theta)*orbitSize;

  position.y += yIncrement;

  if (position.y >= height-25) {
    yIncrement = -10;
  }

  if (position.y >= 25) {
    yIncrement = 10;
  }

  ellipse (position.x, position.y+width/2, 100, 100);
  
  //if mousePressed {
    
  //ellipse (position.y+width/2, position.x,100,100);
}
