PShape caparazon;
Gizmo gizmo;
Grid grid;

void setup () {
  size(500,500, P3D);
  gizmo = new Gizmo ();
  grid = new Grid();
  caparazon = loadShape("Caparazon.obj");
  caparazon.rotateX(radians(90));
}

void draw () {
  background(0);
  camera(50, 50, 50, 
          0, 0, 0,
          0, 0,-1);
  gizmo.Draw();
  grid.Draw();
  beginShape();
    rotateZ(radians(5*millis()/10.0));
    shape(caparazon);
  endShape();
}
