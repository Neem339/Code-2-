int w = 50;
int h = 25;

int cols, rows;

Bricks myBricks [] [];

void setup() {
  size(500, 500);
  cols = int(width/w);
  rows = int(height*.5/h);

  noStroke();

  myBricks = new Bricks[cols][rows];

  for (int i = 0; i<cols; i++) {
    for (int j = 0; j<rows; j++) {
      myBricks[i][i] = new Bricks (i*w, j*h, w-10, h-10);
    }
  }
}

void draw() {

  for (int i = 0; i<cols; i++) {
    for (int j = 0; j<rows; j++) {
      float red = map(i, 0, cols, 100, 255);
      float blue = map(j,0, rows,50,200);
      myBricks[i][i].display(color(red, 0, blue));
    }
  }
}
