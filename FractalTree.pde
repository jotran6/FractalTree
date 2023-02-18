private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
void setup() {
  size(800, 500);
}

void draw() {
  background(#BBF7F3);
  fill(#F7B761);
  ellipse(0,0,200,200);
  stroke(0);
  translate(width/2, height);
  stroke(#BC9926);
  strokeWeight(2.5);
  drawBranches(125);
}

void drawBranches(float len) {
  line(0, 0, 0, -len);
  translate(0, -len);
  if (len > 2) {
    pushMatrix();
    rotate(PI/8);
    drawBranches(len*0.67);
    popMatrix();
    pushMatrix();
    rotate(-PI/3);
    drawBranches(len*0.67);
    popMatrix();
  }
}

