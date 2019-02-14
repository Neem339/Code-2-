Snowflakes s;
ArrayList <Snowflakes> mySnow;

void setup(){
   size(800, 600);
   
   s = new Snowflakes(random(0,width),0);
   
   mySnow = new ArrayList<Snowflakes>();
}

void draw(){
  background(88,112,115);
  
  for (int i = 0; i<mySnow.size(); i++){
    Snowflakes s = mySnow.get(i);
    s.display();
    s.fall();
    if(s.isAlive() == false){
      mySnow.remove(i);
    }
  }
  
  if(frameCount% 10 == 0){
    mySnow.add(new Snowflakes(random(0,width),random(0,height)));
  }
  //s.display();
  //s.fall();
  //if(s.isAlive() == false){
  //}
}
