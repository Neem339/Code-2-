String myStrings[] = {"hey", "hey pal", "mugs", "nice"};
int size = 100;
float xPos [] = new float [4];
int index;

void setup() {
  size(600, 600);

  float spacing = width/4;

  for (int i = 0; i < 4; i++) {
    xPos[i]= i*spacing + size*.75;
  }
}


void draw() {
  background(255);

  float spacing = width/4;
  for (int i = 0; i < 4; i++) {
    xPos[i]= i*spacing + size*.75;
    if (dist(mouseX, mouseY, xPos[i], 100)<=size && mousePressed) {
      index = i;
      println(i);
      fill(255);
    } else {
      fill(0);
      ellipse( xPos[i], 100, size, size);
    }
  }
  fill(0);
    text(myStrings[index], width/2-textWidth(myStrings[index])/2, height/2);
}
