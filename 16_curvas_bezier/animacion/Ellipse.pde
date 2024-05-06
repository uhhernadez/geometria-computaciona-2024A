class Ellipse extends Curve {
  float rx;
  float ry;
  
  Ellipse(float radiousx, float radiousy) {
    super(0, 2*PI);
    rx = radiousx;
    ry = radiousy;
    Eval();
  }
  float fx (float t) {
    return rx * cos (t); 
  }
  float fy (float t) {
    return ry * sin (t);
  }
  
}
