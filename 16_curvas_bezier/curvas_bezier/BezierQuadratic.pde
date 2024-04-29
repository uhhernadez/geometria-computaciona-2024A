class BezierQuadratic extends Curve {
  PVector p0; // punto inicial
  PVector p1; // nodo de control
  PVector p2; // punto final
  
  BezierQuadratic (float x0, float y0, 
                   float x1, float y1,
                   float x2, float y2) {
    super(0, 1.0);
    p0 = new PVector (x0, y0);
    p1 = new PVector (x1, y1);
    p2 = new PVector (x2, y2);
    Eval();
  }
  
  float fx (float t) {
    return (1-t)*(1-t)*p0.x + 
             2*t*(1-t)*p1.x +
             t*t*p2.x;
  }
  
  float fy (float t) {
    return (1-t)*(1-t)*p0.y + 
             2*t*(1-t)*p1.y +
             t*t*p2.y;
  }

}
