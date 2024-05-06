class Gen extends Curve {
  float k;
  float r;
  Gen (float k, float r) {
    super(0, 2*PI);
    this.k = k;
    this.r = r;
    Eval();
  }
  float fx(float t) {
    return r * (k-1) * cos(t) + r * cos ((k-1)*t);
  }
  float fy(float t) {
    return r * (k-1) * sin(t) - r * sin ((k-1)*t);
  }
}
