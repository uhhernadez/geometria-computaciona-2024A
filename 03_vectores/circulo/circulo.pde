Circle c;
void setup () {
  size (512, 512);
  c = new Circle(100);
}

void draw () {
  translate(width / 2, height /2);
  c.Draw();
}
