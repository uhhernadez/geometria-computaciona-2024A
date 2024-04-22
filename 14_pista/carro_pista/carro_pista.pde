PShape gokart;
Gizmo g;
Curve pista;
int n = 0;

void setup () {
  size (500, 500, P3D);
  g = new Gizmo ();
  gokart = loadShape("GoKart1.obj");
  gokart.rotateX(radians(90));
  pista = new Curve(0, 2*PI, 100);
}

void draw () {
 background(125);
 camera(100, 100, 100,
        0, 0, 0,
        0, 0, -1);
 float fov = radians(60); // PI/3
 perspective(fov, width/height, 0.01, 1000);
 lights();
 g.Draw(); 
 pista.Draw();
 pushMatrix();
   PVector salida = pista.points.get(n);
   translate(salida.x, salida.y,salida.z);
   shape(gokart);
 popMatrix();
 n++;
 n = (n >= pista.points.size())? 0 : n ;
}
