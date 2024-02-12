Triangulo triangulo;

void setup () {
  size (512, 512);
  triangulo = new Triangulo ();
}

void draw () {
  translate(width/2.0, height/2.0);
  triangulo.Dibujar();
}
