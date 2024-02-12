Linea l1, l2;

void setup () {
  size (512, 512);
  l1 = new Linea(2, 10);
  l2 = new Linea(-1, 100);
}

void draw () {
  background(200);
  l1.Dibujar();
  l2.Dibujar();
  float angulo = Angulo(l2, l1);
  PVector p = Interseccion(l1,l2);
  textSize(20);
  text("Angulo " + degrees(angulo), 300, 200);
  circle(p.x, p.y, 5);
  float theta_l1 = atan(l1.m);
  float theta_l2 = atan(l2.m);
  arc(p.x, p.y, 30, 30, theta_l1, theta_l1 + angulo);
  arc(p.x, p.y, 50, 50, theta_l2, theta_l1);
 // l2.m += 0.001;
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
