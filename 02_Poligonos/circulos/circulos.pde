ArrayList <Circulo> circulos;
boolean direccion;

void setup () {
  fullScreen();
  //size (512, 512);
  circulos = new ArrayList<Circulo>();
  direccion = true;
}

void draw () {
  //background(0);
  for (Circulo c: circulos) {
    c.Dibujar();
  }
}

void mousePressed() {
  println("Se ha presionado el mouse " + mouseX + " " + mouseY);
  float r = random (10, 50);
  circulos.add(new Circulo (r, mouseX, mouseY, direccion));
  direccion = !direccion;
}
