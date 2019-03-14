int state = 0;

void setup(){
  size(1200,900);
  textAlign(CENTER,CENTER);
  rectMode(CENTER);

}
void draw(){
  switch (state) {
  case 0:
    scene0();
    break;
  case 1:
    scene1();
    break;
  case 2:
    scene2();
    break;
  case 3:
    scene3();
    break;
  case 4:
    scene4();
  default:
    break;
  }
} 

void keyPressed() {
  switch (state) {
  case 0:
    if (key == ' ') {
      state = 1;
    }
    break;
  case 1:
    if (key == ' ') {
      state = 2;
    }
    break;
  case 2:
    if (key == ' ') {
      state = 3;
    }
    break;
  case 3:
    if (key == ' ') {
      state = 4;
    }
    break;
  case 4:
    if (key == 'r') {
      state = 0;
    }
  default:
    break;
  }
}

void scene0(){
  background(0);
  ellipse(width/2,width/2,width/2,width/2);
}

void scene1(){
  background(255);
  rect(100,100,100,100);
  rect(300,300,300,300);
  rect(600,600,600,600);
}

void scene2(){
  background(25,25,112);
  
  //pulled the same star shape function ive been using forever, its from the references page of processing
  
  pushMatrix();
  translate(width*0.8, height*0.5);
  rotate(frameCount / -100.0);
  star(0, 0, 30, 70, 5); 
  popMatrix();
  
   pushMatrix();
  translate(width*0.5, height*0.2);
  rotate(frameCount / -100.0);
  star(0, 0, 30, 70, 5); 
  popMatrix();
  
   pushMatrix();
  translate(width*0.6, height*0.8);
  rotate(frameCount / -100.0);
  star(0, 0, 30, 70, 5); 
  popMatrix();
  
   pushMatrix();
  translate(width*0.2, height*0.6);
  rotate(frameCount / -100.0);
  star(0, 0, 30, 70, 5); 
  popMatrix();
}

void scene3(){
  background(255,0,255);
  text("yikes",width/2,height/2);
  
}

void scene4(){
  background(0);
  text("courtney, thank you for being a good code teacher i really appreciate you. I'm sorry I barely understand question 5",width/2,height/2);
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
