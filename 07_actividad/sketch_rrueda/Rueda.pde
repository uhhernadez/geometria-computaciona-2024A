class Rueda {
  float radio;
  PVector centro;
  ArrayList<PVector> rayos;
  
  Rueda (float radio) {
    this.radio = radio;
    centro = new PVector(0,0);
    rayos = new ArrayList<PVector>();
    rayos.add(new PVector(radio,0));
    rayos.add(new PVector(0,radio));
    rayos.add(new PVector(-radio,0));
    rayos.add(new PVector(0,-radio));
  }

  Rueda (float radio, float x, float y) {
    this.radio = radio;
    centro = new PVector(x,y);
    rayos = new ArrayList<PVector>();
    rayos.add(new PVector(radio,0));
    rayos.add(new PVector(0,radio));
    rayos.add(new PVector(-radio,0));
    rayos.add(new PVector(0,-radio));
  }

  void Dibujar () {
    circle(centro.x, centro.y, 2 * radio);
    for (PVector p : rayos) {
     line (centro.x, centro.y, centro.x + p.x, centro.y + p.y);
    }
  }
  
  void RotarRueda (float dtheta) {
    for (PVector p : rayos) {
      float x = p.x * cos (dtheta) + p.y * sin (dtheta);
      float y = -p.x * sin (dtheta) + p.y * cos (dtheta);
      p.set(x, y);
    }
  }
  
  
}
