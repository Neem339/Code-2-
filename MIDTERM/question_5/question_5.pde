float r; 
color bgColor; 
String [] bgString;
String lastBgString;

void setup(){
   bgString = loadStrings("bgColor.csv");
    lastBgString = bgString[0];
  
  for (int i = 0; i<bgString.length; i++) {
    if (int(bgString[i]) > int(lastBgString)) {
      lastBgString = bgString[i];
    }
  }
  size(600, 600); 

}

void draw(){
  background(bgColor); 
  text("back ground # : " + bgColor, 100, 100); 
}

void mousePressed(){
  bgColor = color(random(0,255), random(0,255), random(0,255)); 
  ellipse(mouseX, mouseY, 50, 50); 
}
