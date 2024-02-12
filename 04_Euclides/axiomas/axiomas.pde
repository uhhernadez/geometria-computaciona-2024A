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
  PVector p = Interseccion(l1,l2);
  textSize(20);
  text("Angulo " + degrees(angulo), 300, 200);
  circle(p.x, p.y, 5);
  arc(p.x, p.y, 30, 30, QUARTER_PI, PI);
}

float Angulo (Linea a, Linea b) {
  float num = a.m - b.m;
  float den = 1 + a.m * b.m; // Nunca es cero
  return atan(num / den);
}

PVector Interseccion (Linea l1, Linea l2) {
  float a = l1.m;
  float c = l1.b;
  float b = l2.m;
  float d = l2.b;
  
  float x = ( d - c ) / ( a - b ) ;
  float y = ( a * d - b * c) / ( a - b ) ;
  
  return new PVector(x,y);
}
