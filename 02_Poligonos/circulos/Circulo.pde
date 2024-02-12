class Circulo {
  float r, x, y;
  color relleno;
  boolean direccion;
  
  Circulo (float r, float x, float y) {
    this.x = x;
    this.y = y;
    this.r = r;
    relleno = color (random(100, 200), 
                     random(0, 150), 
                     random(150, 250));
    direccion = true;                 
  }
  
  Circulo (float r, float x, float y, boolean direccion) {
    this.x = x;
    this.y = y;
    this.r = r;
    relleno = color (random(100, 200), 
                     random(0, 150), 
                     random(150, 250));
    this.direccion = direccion;                 
  }


  void Dibujar () {
    noStroke();
    fill (relleno);
    circle(x, y, 2*r);
    //y=y-5;
    if (direccion) {
      x = x + 5;
    } else {
      x = x - 5;
    }
  }
}
