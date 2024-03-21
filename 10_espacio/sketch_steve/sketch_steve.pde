Gizmo g;
void setup() {
  size(512, 512, P3D);
  g = new Gizmo();
}

void draw() {
  background(0);  
  camera(50, 50 , 50, 
          0, 0, 0,
          0, 0, -1);
  g.Draw();
}
