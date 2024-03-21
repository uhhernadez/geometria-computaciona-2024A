Gizmo g;
Part leg_right;
void setup() {
  size(512, 512, P3D);
  g = new Gizmo();
  leg_right = new Part(5, 0, 20, 0, 0, -10, 5, 5, 20);
}

void draw() {
  background(0);  
  camera(50, 50 , 50, 
          0, 0, 0,
          0, 0, -1);
  g.Draw();
  float t = millis()/1000.0;
  leg_right.Draw(); 
}
