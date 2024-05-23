Gizmo gizmo;
Grid grid;
Item caparazon;
PShape cshape;
ArrayList<Item> items;
void setup () {
  size(500,500, P3D);
  gizmo = new Gizmo ();
  grid = new Grid();
  cshape = loadShape("Caparazon.obj");
  cshape.rotateX(radians(90));
  caparazon = new Item(0, 0, 0, 40, 2, cshape);
  items = new ArrayList<Item>();
}

void draw () {
  background(0);
  camera(50, 50, 50, 
          0, 0, 0,
          0, 0,-1);
  gizmo.Draw();
  grid.Draw();
  caparazon.Draw();
  for (Item i: items) {
    i.Draw();
  }
}

void mousePressed() {
  items.add(new Item(0, 0, 0, 40, 2,cshape));
}
