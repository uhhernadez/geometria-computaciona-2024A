Curve c;
void setup () {
  size(500,500);
  c = new Curve(0, 2*PI);
  c.Scale(10);
  c.Rotation(radians(180));
}
int n = 0;
void draw () {
 // background(124);
  translate(width/2, height/2);
  //c.Draw();
  //c.Rotation(radians(1));
  //c.Scale(1.001);
  PVector p = c.points.get(n);
  circle(p.x, p.y, 10);
  n++;
  n = (n >= c.points.size())? 0 : n ;
}
