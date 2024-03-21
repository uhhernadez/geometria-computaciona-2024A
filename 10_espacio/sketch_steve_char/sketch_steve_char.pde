Gizmo g;
Steve steve;
ArrayList<Steve> army;
void setup() {
  size(512, 512, P3D);
  g = new Gizmo();
  steve = new Steve(-10, -10, 0);
  army = new ArrayList<Steve>();
  
  for (int i=0; i<200;i++) {
    army.add(new Steve(0,0,0));
  }
  
}

void draw() {
  background(0);  
  camera(100, 100 , 100, 
          0, 0, 20,
          0, 0, -1);
  g.Draw();
  steve.Draw();
  steve.pos.add(0,0.1,0);
  for (Steve s:army) {
    s.Draw();
    s.pos.add(0,0.1,0);
  }
}
