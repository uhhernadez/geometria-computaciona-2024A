//Planeta marte;
Planeta tierra; // El planeta azul

void setup () {
  size (512, 512);
  tierra = new Planeta ();
  tierra.Trasladar(10, 0);
}

void draw () {
  translate(width/2.0, height/2.0);
  tierra.Dibujar();
  //tierra.centro.set(200, 200);
  PVector r = PVector.random2D();
  r.mult(5);
  //tierra.Trasladar(r.x, r.y);
  float t = millis () / 1000.0f;
  float x = 200 * cos (2 * PI * 1 * t );
  float y = tierra.centro.y;
  tierra.centro.set(x, y);
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
