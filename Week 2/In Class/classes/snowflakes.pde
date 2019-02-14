class Snowflakes {
  //position
  //color
  //opacity 
  float x, y;
  color c;
  float o = 255;
  float gravity;
  float size;

  Snowflakes(float _x, float _y) {
    x= _x;
    y= _y;

    gravity = .3;
    size = random (5, 15);
  }
  //draw 
  void display() {
    fill(255,o);
    noStroke();
    ellipse(x,y,size,size);
  }
  //fall

  void fall() {
    y += gravity;
    o -=.1;
  }
  
  boolean isAlive(){
    if (y>height){
      return false;
    }else{
      return true;
    }
  }


  //gravity
  //opactiy

  //boolean to check if our snowflak is alive
}
