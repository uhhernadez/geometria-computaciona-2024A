PShape rata;
Gizmo g;
void setup () {
  size(512, 512, P3D);
  g = new Gizmo ();
  rata = loadShape("rata_centrada.obj");
}

void draw () {
  background(255);
  lights();
  camera(10, 10, 10, 
           0,   0,   0,
           0,   0,  -1);
  g.Draw();
  float fov = radians(60);
  perspective(fov, float(width)/float(height), 
            1, 1000);
 // translate(-10,-10,-10);
  scale(10);
  
  shape(rata);
}
