class Linea {
  float m;
  float b;
  float XMIN, XMAX;
  
  Linea (float m, float b) {
    this.m = m;
    this.b = b;
    XMIN = -1000;
    XMAX = 1000;
  }
  
  void Dibujar () {
    float y1 = XMIN * m + b;
    float y2 = XMAX * m + b;
    line (XMIN, y1, XMAX, y2);
  }
  
}
