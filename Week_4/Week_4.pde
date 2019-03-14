Ball[] balls = {new Ball(100, 100, random(40, 60)), new Ball(600, 600, random(50, 80))};

void setup() {
  size(800, 800);
}

void draw() {
  background(162, 199, 206);

  for (Ball b : balls) {
    b.update();
    b.display();
    b.checkBound();
  }
}
