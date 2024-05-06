class Spiral extends Curve {
  float r;
  Spiral(float radious)  {
    super(0, 8*PI);
    r = radious;
    Eval();
    isclose = false;
  }
  float fx (float t) {
    return r * (t/maxt) *cos (t);
  }
  float fy (float t) {
    return r * (t/maxt)* sin(t);
  }
}
