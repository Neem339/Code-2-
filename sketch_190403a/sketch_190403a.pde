int cellSize = 10;
color colors [] [];
int Cells [] [];
int cols, rows;

void setup() {
  noStroke();
  size(1000, 1000);

  cols = width/cellSize;
  rows = height/cellSize;

  colors = new color[cols][rows];
  for (int i = 0; i<cols; i++) {
    for (int j = 0; j<rows; j++) {
    }
  }
}

void draw() {
  
float inc = 0.09;


float xoff = 0.0; 
  for (int i = 0; i<cols; i++) {
xoff += inc;
           float yoff = 0.0;
    for (int j = 0; j<rows; j++) {
      //colors[i][j] = color(100,100,random(100,255));

                 yoff += inc;
     
     
     
      float noiseVal = noise(xoff,millis()*.01, yoff);
      color fillColor =  color(map(noiseVal, 0, 1, 0, 150), map(noiseVal, 0, 1, 76, 225), map(noiseVal, 0, 1, 175, 255));
     
      colors[i][j] = fillColor;
      println(noiseVal);
      
    }
  }
  for (int i = 0; i<cols; i++) {
    for (int j = 0; j<rows; j++) {
      fill(colors[i][j]);
      rect(i*cellSize, j*cellSize, cellSize, cellSize);
    }
  }
}
