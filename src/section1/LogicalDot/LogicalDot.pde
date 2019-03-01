void setup() {
  size(800,800);
}

void draw() {
  fill(255,0,0);
  
  ellipse(50,50,50,50);
  
  if(mousePressed) {
    fill(0,255,0);
  }
}