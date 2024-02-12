class Linea {
  float m;
  float b;
  float color_r, color_g, color_b;
  Linea () {
    m = 1;
    b = 0;
  }
  
  Linea (float m, float b) {
    this.m = m;
    this.b = b;
    color_r = random(23,100);
    color_g = random(0, 150);
    color_b = random(0, 200);
  }
  
  void Dibujar () {
    stroke(color_r, color_g, color_b);
    strokeWeight(10);
    float x1, y1, x2, y2;
    x1 = -1000;
    x2 = 1000;
    y1 = m * x1 + b;
    y2 = m * x2 + b;
    line(x1, y1, x2, y2);
  }
}
