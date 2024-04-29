Circle c;
Ellipse e;
Spiral s;
Gen g;
ArrayList<Gen> flower;
void setup () {
  size (500, 500);
  c = new Circle(20);
  e = new Ellipse(20, 40);
  s = new Spiral (50);
  g = new Gen(11, 10);
  flower = new ArrayList<Gen>();
  for (int k = 11; k >=3; k--) {
    flower.add(new Gen(k, 10));
  }
}

void draw () {
  background(200);
  translate(width/2, height/2);
  boolean toggle = false;
  for (Gen g : flower) {
    g.Draw();
    g.Scale(1.01);
    if (toggle) {
      g.Rotate(radians(1));
    } else {
      g.Rotate(-radians(1));
    }
    toggle = !toggle;
  }
  //c.Draw();
  //e.Draw();
  //s.Draw();
  //s.Rotate(-radians(1));
  //s.Scale(1.001);
  //g.Draw();
}
