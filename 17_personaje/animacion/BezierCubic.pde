class BezierCubic extends Curve {
  PVector p0; // punto inicial
  PVector p1; // nodo de control
  PVector p2; // nodo de control
  PVector p3; // punto final
  
  BezierCubic (float x0, float y0, 
               float x1, float y1,
               float x2, float y2,
               float x3, float y3) {
    super(0, 1.0);
    p0 = new PVector (x0, y0);
    p1 = new PVector (x1, y1);
    p2 = new PVector (x2, y2);
    p3 = new PVector (x3, y3);
    Eval();
    isclose = false;
  }
  
  float fx (float t) {
    return (1-t)*(1-t)*(1-t)*p0.x + 
             3*t*(1-t)*(1-t)*p1.x +
             3*t*t*(1-t)    *p2.x +
             t*t*t          *p3.x;
  }
  
  float fy (float t) {
    return (1-t)*(1-t)*(1-t)*p0.y + 
             3*t*(1-t)*(1-t)*p1.y +
             3*t*t*(1-t)    *p2.y +
             t*t*t          *p3.y;
  }
  
  void Draw () {
    noFill();
    Eval();
    beginShape();
      for (PVector p: points) {
        vertex(p.x, p.y);
      }
    endShape();
    fill(125);
    line(p0.x, p0.y, p1.x, p1.y);
    line(p2.x, p2.y, p3.x, p3.y);
    
    circle(p0.x,p0.y, 10);
    circle(p1.x,p1.y, 10);
    circle(p2.x,p2.y, 10);
    circle(p3.x,p3.y, 10);
  }
}
