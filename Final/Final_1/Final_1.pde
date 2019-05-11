PImage img; 
int cellSize = (int(random(4,14))); 
int cols, rows; 

void setup() {
  size(762, 588, P3D); //in order to use 3 dimensions in processing, must specify in your size setup
  //need to have the exact dimensions of our image in order to get pixel information 

  img= loadImage("2.jpg"); 
  cols = width/cellSize; 
  rows = height/cellSize;
  
    //pushMatrix();
    //    beginCamera();
    //    camera();
    //    rotateX(radians(mouseY));
    //    endCamera();

    //    //translate(50, 50, 0);
    //    //rotateY(radians(mouseY));
    //  popMatrix();
}

void draw() {
  background(0); 
  loadPixels(); 

//make variables here tan(PI/6)

  // camera(mouseX, height/2, keyPressed/ tan(PI/12), width/2, height/2, 0, 0, 1, 0);
  camera(mouseX, height/2, (mouseY/2)/ tan(PI/12), width/2, height/2, 0, 0, 1, 0);

  for (int i= 0; i<cols; i++) {
    for (int j =0; j<rows; j++) {
      int x = i * cellSize + cellSize/2; //position along the x axis
      int y = j * cellSize + cellSize/2; //position along the y axis
      int loc = x + y * width; //calculates the position of your pixels 
      //gets the data from your 1d array based on calculation of your location
      color c = img.pixels[loc]; 

      float z = (mouseX/(float(width))) * brightness(img.pixels[loc]); 
      float r = (mouseY/(float(height))) * brightness(img.pixels[loc]); 
      //z position is calculated based our our mouseX position and the brightness of the pixels
     
      pushMatrix(); 
        translate(x, y, z); 
        //rotate(mouseX); 
        fill(c); 
        noStroke(); 
        box(cellSize); 
      popMatrix(); 

    
    }
  }
  //void keypressed
    //key code left r
    //if(keyPressed w) 
     // then effect camera?
}
