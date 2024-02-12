PVector v1, v2, v3;
void setup () {
  size (512, 512);
  v1 = new PVector (100, 50);
  v2 = PVector.random2D();
  v2.mult(50);
  v3 = PVector.random2D();
  v3.mult(100);
}

void draw () {
  translate(width/2, height/2);
  PVector v4;
  DibujarVector(v1, color(255, 0, 0));
  DibujarVector(v3, color(0, 255, 0));
  DibujarVector(v2, color(0, 0, 255));
  v4 = PVector.add(v2, v3);
  DibujarVector(v4, color(0, 255, 255));
  DibujarVector(v2, v4, color(255, 255, 0));
  DibujarVector(v3, v4, color(255, 255, 0));
}

void DibujarVector (PVector v, color c) {
  stroke(c);
  line(0, 0, v.x, v.y);
}

void DibujarVector (PVector vi, PVector vf, color c) {
  stroke(c);
  line(vi.x, vi.y, vf.x, vf.y);
}
