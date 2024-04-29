BezierFirst b1;
BezierQuadratic q;
BezierCubic c;
PVector picked;
void setup () {
  size (500, 500);
  b1 = new BezierFirst(-50,-50, 
                       100, 100);
  q = new BezierQuadratic(-50, -50,
                          200, 0,
                          100, 100);
  c = new BezierCubic (-50, -50,
                       200, 0,
                       0, 200,
                       100, 100);
 picked = new PVector();                      
}

void draw () {
  background(200);
  translate(width/2, height/2);
  //b1.Draw();
  //q.Draw();
  //q.p1.rotate(radians(1));
  c.Draw();
  //c.p2.rotate(radians(1));
  //c.p1.rotate(-radians(1));
  if(holding) {
    circle(picked.x, picked.y, 10);
  }
}
boolean holding = false;
void mousePressed(){
  PVector cursor = new PVector(mouseX - width/2.0, 
                               mouseY - height/2.0);
  if(holding) return;
  
  float d0 = PVector.dist(c.p0, cursor);
  float d1 = PVector.dist(c.p1, cursor);
  float d2 = PVector.dist(c.p2, cursor);
  float d3 = PVector.dist(c.p3, cursor);
  
  if (d0 < 10 ) {
    picked.set(cursor.x, cursor.y);
    holding = true;
  }
  if (d1 < 10) {
    picked.set(cursor.x, cursor.y);
    holding = true;
  }
  if (d2 < 10) {
    picked.set(cursor.x, cursor.y);
    holding = true;
  }
  if (d3 < 10) {
    picked.set(cursor.x, cursor.y);
    holding = true;
  }
}

void mouseMoved() {

}
void mouseReleased() {
  
}
