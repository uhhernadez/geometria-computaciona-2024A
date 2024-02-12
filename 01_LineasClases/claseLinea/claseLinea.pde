
void setup () {
  size (512, 512);
}

void draw () {
  background(255);
  float t = millis () / 1000.0;
  Linea linea;
  linea = new Linea(t, 2);
  linea.Dibujar();
}
