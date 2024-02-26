class Planeta {
  PVector centro;
  //float x, y;
  float orientacion;
  float theta;

  Planeta () {
    centro = new PVector (0, 0);
  }
  
  void Dibujar () {
    circle (centro.x, centro.y, 20);
  }
  
  void Trasladar (float dx, float dy) {
    // Primera aproximación a la traslacion
    float xp = centro.x + dx;
    float yp = centro.y + dy;
    centro.set(xp , yp);
    // vs
    // centro.add(new PVector (dx, dy));
  }
}
