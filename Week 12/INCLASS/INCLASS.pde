PShape sun, planet1, planet2;
PImage sunText, earth, jupiter;

void setup(){
 fullScreen(P3D,2); 
 noStroke();
 
 sunText = loadImage("sun.jpg");
 earth = loadImage("earth.jpg");
 jupiter = loadImage("jupiter.jpg");
 
 fill(255);
 
 sun = createShape(SPHERE, 250);
 sun.setTexture(sunText);
 
 planet1 = createShape(SPHERE, 25);
 planet1.setTexture(earth);
 
 planet2 = createShape(SPHERE, 50);
 planet2.setTexture(jupiter);
 
}

void draw(){
  background(0);
  
  pushMatrix();
  translate(width/2, height/2, -250); //translate sun
  pushMatrix(); //set new coord system for our canvas
  rotateY(PI* frameCount / 500);
  shape(sun);
  popMatrix();
      
    rotateY(PI* frameCount/300);
    translate(200,0,500);
    
    shape(planet1);
    
    shape(planet2);
  popMatrix();
  
  translate(.75*width, .6 * height, 50);

}
