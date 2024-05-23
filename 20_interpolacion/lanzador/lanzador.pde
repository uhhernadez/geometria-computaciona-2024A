Gizmo gizmo;
Grid grid;
Item caparazon;

void setup () {
  size(500,500, P3D);
  gizmo = new Gizmo ();
  grid = new Grid();
  caparazon = new Item(0, 0, 0, 20, 4);
}

void draw () {
  background(0);
  camera(50, 50, 50, 
          0, 0, 0,
          0, 0,-1);
  gizmo.Draw();
  grid.Draw();
  caparazon.Draw();
}
