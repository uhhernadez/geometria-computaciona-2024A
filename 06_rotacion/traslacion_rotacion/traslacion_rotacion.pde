Planeta tierra; // El planeta azul
Planeta marte;

void setup () {
  size (512, 512);
  tierra = new Planeta ( color(0, 0, 240), 30);
  marte = new Planeta ( color (128, 0, 0), 20);
  tierra.Trasladar(80, 0);
  marte.Trasladar(120, 0);
}

void draw () {
  background(125);
  translate(width/2.0, height/2.0);
  tierra.Dibujar();
  tierra.Rotar(radians(0.5));
  marte.Dibujar();
  marte.Rotar(-radians(0.25));
  
}

void keyPressed() {
  float avance = 8;
  if ( key == 'w' || key == 'W') {
    tierra.Trasladar(0, -avance);
  }
  if ( key == 's' || key == 'S') {
    tierra.Trasladar(0, avance);
  }
  if ( key == 'd' || key == 'D') {
    tierra.Trasladar(avance, 0);
  }
  if ( key == 'a' || key == 'A') {
    tierra.Trasladar(-avance, 0);
  }
}
