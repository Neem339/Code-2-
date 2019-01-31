//string array setup 
//set up display text
//four circles 
//calc dist between mouse and circle 
// conditional to check dist 
// if distance is within area of circ, 
//then change the index position in string array
int size = 60;

void setup(){
  size(600,600);
  
}

void draw(){
  
  for(int i = 0; i<= 4; i+=2){
   ellipse(i,200, size, size); 
  }
  
}
