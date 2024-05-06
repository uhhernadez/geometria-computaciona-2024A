class BezierFirst extends Curve {
  PVector p0; // punto inicial
  PVector p1; // punto final
  
  BezierFirst (float x0, float y0, 
               float x1, float y1) {
    super(0, 1.0);
    p0 = new PVector (x0, y0);
    p1 = new PVector (x1, y1);
    Eval();
  }
  
  float fx (float t) {
    return p0.x + (p1.x - p0.x) * t;
  }
  
  float fy (float t) {
    return p0.y + (p1.y - p0.y) * t;
  }

}
