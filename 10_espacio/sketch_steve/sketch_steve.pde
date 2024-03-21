Gizmo g;
Part leg_right;
Part leg_lefth;
Part body;
Part arm_right;
Part arm_lefth;
Part head;
void setup() {
  size(512, 512, P3D);
  g = new Gizmo();
  leg_right = new Part(2.5, 0, 15, 0, 0, -7.5, 5, 5, 15);
  leg_lefth = new Part(-2.5, 0, 15, 0, 0, -7.5, 5, 5, 15);
  body = new Part(0, 0, 21, 0, 0, 0, 10, 5, 12);
  arm_right = new Part(7.5, 0, 27, 0, 0, -7.5, 5, 5, 15);
  arm_lefth = new Part(-7.5, 0, 27, 0, 0, -7.5, 5, 5, 15);
  head = new Part(0, 0, 32, 0, 0, 0, 10, 10, 10);
}

void draw() {
  background(0);  
  camera(50, 50 , 40, 
          0, 0, 20,
          0, 0, -1);
  g.Draw();
  float t = millis()/1000.0;
 
  leg_right.RotateX(radians(45*sin(2*PI*t)));
  leg_right.Draw(); 
  leg_lefth.RotateX(radians(45*cos(2*PI*t + PI/2)));
  leg_lefth.Draw();
  body.Draw();
  arm_right.Draw();
  arm_right.RotateX(radians(45*cos(2*PI*t + PI/2)));
  arm_lefth.Draw();
  arm_lefth.RotateX(radians(45*sin(2*PI*t)));
  head.Draw();
}
