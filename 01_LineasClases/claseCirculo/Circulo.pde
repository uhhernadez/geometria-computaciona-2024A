class Circulo {
  float x;
  float y;
  float r;
  float colorR, colorG, colorB;
  
  Circulo (float x, float y, float r) {
    this.x = x;
    this.y = y;
    this.r = r;
    colorR = random(0, 255);
    colorG = random(0, 255);
    colorB = random(0, 255);
  }

  void Dibujar () {
    fill(colorR, colorG, colorB);
    circle(x, y, r * 2.0 /*extent  == diámetro*/); 
  }

}
