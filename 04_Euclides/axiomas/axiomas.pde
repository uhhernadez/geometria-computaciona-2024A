Linea l1, l2;

void setup () {
  size (512, 512);
  l1 = new Linea(2, 10);
  l2 = new Linea(-1, 100);
}

void draw () {
  l1.Dibujar();
  l2.Dibujar();
  float angulo = Angulo(l2, l1);
  text("Angulo " + degrees(angulo), 300, 200);
}

float Angulo (Linea a, Linea b) {
  float num = a.m - b.m;
  float den = 1 + a.m * b.m; // Nunca es cero
  return atan(num / den);
}
