Gizmo g;
Part leg_right;
Part leg_lefth;
Part body;
Part arm_right;
Part arm_lefth;
void setup() {
  size(512, 512, P3D);
  g = new Gizmo();
  leg_right = new Part(2.5, 0, 15, 0, 0, -7.5, 5, 5, 15);
  leg_lefth = new Part(-2.5, 0, 15, 0, 0, -7.5, 5, 5, 15);
  body = new Part(0, 0, 21, 0, 0, 0, 10, 5, 12);
  arm_right = new Part(7.5, 0, 27, 0, 0, -7.5, 5, 5, 15);
  arm_lefth = new Part(-7.5, 0, 27, 0, 0, -7.5, 5, 5, 15);
}

void draw() {
  background(0);  
  camera(20, 100 , 20, 
          0, 0, 20,
          0, 0, -1);
  g.Draw();
  float t = millis()/1000.0;
  leg_right.Draw(); 
  leg_lefth.Draw();
  body.Draw();
  arm_right.Draw();
  arm_lefth.Draw();
}
