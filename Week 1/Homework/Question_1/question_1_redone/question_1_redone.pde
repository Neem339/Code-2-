String [] quotes;

void setup(){
 size(600,600);
 
 
}

void draw(){
  background(255);
  
  println(mouseX, mouseY);
  
  for(int i = 25; i <= 200; i+=50){
    ellipse( i*3, 100, 100, 100);
    
    if (mousePressed) {
      fill(0);
      
      
    }else{
      fill(255);
    }
  }
}
