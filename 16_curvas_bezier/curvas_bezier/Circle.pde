class Circle extends Curve {
  float radius;
  Circle (float radius) {
    super(0, 2*PI);
    this.radius = radius;
    Eval();
  }
  float fx (float t) {
    return radius * cos (t);
  } 
  float fy (float t) {
    return radius * sin (t);
  }
}
