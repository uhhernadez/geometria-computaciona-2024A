PShape gokart;
Gizmo g;
Curve pista;

void setup () {
  size (500, 500, P3D);
  g = new Gizmo ();
  gokart = loadShape("GoKart1.obj");
  gokart.rotateX(radians(90));
  pista = new Curve(0, 2*PI, 50);
}

void draw () {
 camera(100, 100, 100,
        0, 0, 0,
        0, 0, -1);
 float fov = radians(60); // PI/3
 perspective(fov, width/height, 0.01, 1000);
 lights();
 g.Draw();
 shape(gokart); 
 pista.Draw();
}
