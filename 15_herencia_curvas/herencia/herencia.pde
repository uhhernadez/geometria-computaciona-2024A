class Base {
  PVector center;
  Base () {
    center = new PVector();
  }
  void Draw () {  
  }
}

class Rectangle extends Base {
  void Draw () {
    rect(center.x, center.y, 20, 20);
  }
}

class Circle extends Base {
  void Draw () {
    circle(center.x, center.y, 20);
  }
}

Rectangle r;
Circle c;
ArrayList<Base> figs;
void setup () {
  r = new Rectangle();
  c = new Circle ();
  figs = new ArrayList<Base>();
  figs.add(new Rectangle());
  figs.add(new Circle());
}
void draw () {
  r.Draw();
  c.Draw();
  Base rectangle = new Rectangle();
  rectangle.Draw();
    
  for (Base b : figs) {
    b.Draw();
  }  
  
}
