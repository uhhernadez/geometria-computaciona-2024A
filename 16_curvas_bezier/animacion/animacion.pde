BezierFirst b1;
BezierQuadratic q;
BezierCubic c;
PVector picked;
int node;

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
 node = -1;
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
  println("Mouse pressed");
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
    node = 0;
    return;
  }
  if (d1 < 10) {
    picked.set(cursor.x, cursor.y);
    holding = true;
    node = 1;
    return;
  }
  if (d2 < 10) {
    picked.set(cursor.x, cursor.y);
    holding = true;
    node = 2;
    return;
  }
  if (d3 < 10) {
    picked.set(cursor.x, cursor.y);
    holding = true;
    node = 3;
    return;
  }
}

void mouseDragged() {
 PVector cursor = new PVector(mouseX - width/2.0, 
                               mouseY - height/2.0);
  println("mouseDragge");                             
  if(holding) {
    switch(node) {
      case 0: c.p0.set(cursor.x, cursor.y); break;
      case 1: c.p1.set(cursor.x, cursor.y); break;
      case 2: c.p2.set(cursor.x, cursor.y); break;
      case 3: c.p3.set(cursor.x, cursor.y); break;
    }    
    picked.set(cursor.x, cursor.y);
  }
}


void mouseReleased() {
 println("Mouse released");
 holding = false;
 node = -1;
}
