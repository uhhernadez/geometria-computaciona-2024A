PShape gokart;
Gizmo g;
Curve pista;
Grid grid;
int n = 0;
boolean toggle = true;

void setup () {
  size (500, 500, P3D);
  g = new Gizmo ();
  gokart = loadShape("GoKart1.obj");
  gokart.rotateX(radians(90));
  pista = new Curve(0, 2*PI, 100);
  grid = new Grid();
}

void draw () {
 int nSiguiente = (n+1 == pista.points.size())? 0: n+1;
 PVector centro = pista.points.get(n);
 PVector siguiente = pista.points.get(nSiguiente);
 float fov = radians(60); // PI/3
 background(125);
 if(toggle) {
 camera(100, 100, 100,
        0, 0, 0,
        0, 0, -1);
 } else {
   float zcamera = 15;
   camera(centro.x, centro.y, centro.z + zcamera,
          siguiente.x, siguiente.y, siguiente.z + zcamera,
          0, 0, -1);
 }
 perspective(fov, width/height, 0.01, 1000);
 lights();
 grid.Draw();
 g.Draw(); 
 pista.Draw();
 pushMatrix();
   
   translate(centro.x, centro.y, centro.z);
   float theta = atan2(siguiente.y - centro.y, 
                       siguiente.x - centro.x);
   rotateZ(theta);                    
   shape(gokart);
 popMatrix();
 n++;
 n = (n >= pista.points.size())? 0 : n ;
 
}

void mousePressed() {
  toggle = !toggle;
}
