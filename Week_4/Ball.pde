class Ball {
  PVector position;
  PVector velocity;

  float r, m;

  Ball(float x, float y, float r) {
    position = new PVector(x, y);

    velocity = PVector.random2D();
    velocity.mult(random(3, 6));
    this.r = r;
    m = r*.1;
  }
  void update() {
    position.add(velocity);
  }
  void checkBound() {
    if (position.x > width-r || position.x < r) {
      velocity.x = - velocity.x;
    }
    if (position.y > height-r || position.y < r) {
      velocity.y = - velocity.y;
    }
  }
  void checkCol(Ball otherB) {
    PVector dist = PVector.sub(otherB.position, position);

    float distMag = dist.mag();
    float minDist = r + otherB.r;

    if (distMag< minDist) {
      float distCorrection = (minDist - distMag)/2;

      PVector d = dist.copy();
      PVector correctionVector = d.normalize().mult(distCorrection);

      otherB.position.add(correctionVector);
      position.sub(correctionVector);

      float theta = dist.heading();

      PVector[] bTemp = {new PVector(), new PVector()};

      bTemp[1].x = cos(theta)*dist.x + sin(theta)*dist.y;
      bTemp[1].y = cos(theta)*dist.y - sin(theta)*dist.x;

      PVector[] vTemp = {new PVector(), new PVector()};

      vTemp[0].x = cos(theta)*velocity.x + sin(theta)*velocity.y;
      vTemp[0].y = cos(theta)*velocity.y - sin(theta)*velocity.x;
      vTemp[1].x = cos(theta)*otherB.velocity.x + sin(theta)*otherB.velocity.y;
      vTemp[1].x = cos(theta)*otherB.velocity.y - sin(theta)*otherB.velocity.x;

      PVector[] vFinal = {new PVector(), new PVector()};
      
      vFinal[0].x = ((m- otherB.m)* vTemp[0].x + 2*otherB.m * vTemp[1].x)/(m+otherB.m);
      vFinal[1].y = vTemp[1].y;
      
      bTemp[0].x += vFinal[0].x;
      bTemp[1].x+=
    }
  }
  void display() {
    noStroke();
    ellipse(position.x, position.y, r*2, r*2);
  }
}
