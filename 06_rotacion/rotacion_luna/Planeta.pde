class Planeta {
  PVector centro;
  PVector luna;
  //float x, y;
  float orientacion;
  float theta;
  color fondo;
  float diametro;

  Planeta () {
    centro = new PVector (0, 0);
    theta = 0;
    fondo = color(255);
    diametro = 20;
    luna = new PVector(diametro + 5,0);
  }
  
  Planeta (color f, float d) {
    centro = new PVector (0, 0);
    theta = 0;
    fondo = f;
    diametro = d;
    luna = new PVector(diametro + 5,0);
  }
  
  void Dibujar () {
    fill(fondo);
    circle (centro.x, centro.y, diametro);
    float xl = centro.x + luna.x;
    float yl = centro.y + luna.y;
    circle(xl, yl, 3);
  }
  
  void Trasladar (float dx, float dy) {
    // Primera aproximación a la traslacion
    float xp = centro.x + dx;
    float yp = centro.y + dy;
    centro.set(xp , yp);
    // vs
    // centro.add(new PVector (dx, dy));
  }
  
  void Rotar (float dtheta) {
    theta += dtheta; // Radianes
    float x = centro.x * cos (dtheta) + centro.y * sin (dtheta);
    float y = -centro.x * sin (dtheta) + centro.y * cos (dtheta);
    centro.set(x, y);
  }
  
  void RotarLocal (float dtheta) {
    float x = luna.x * cos (dtheta) + luna.y * sin (dtheta);
    float y = -luna.x * sin (dtheta) + luna.y * cos (dtheta);
    luna.set(x, y);
  }
}
