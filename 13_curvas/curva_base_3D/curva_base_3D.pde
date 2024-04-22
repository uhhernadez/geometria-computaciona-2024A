Curve c;
PShape rata;
void setup () {
  size(500, 500,P3D);
  c = new Curve(0, 2*PI);
  c.Scale(10);
  c.Rotation(radians(180));
  rata = loadShape("rata.obj");
}
int n = 0;
void draw () {
  PVector p = c.points.get(n);
  background(0);
  lights();
  camera (p.x, p.y, 10*p.z,
          0, 0, 0,
          0, 0, -1) ;
  perspective(radians(60),height/width,0.1, 1000);
  pushMatrix();
    scale(50);
    rotateX(radians(90));
    shape(rata);
  popMatrix();
  //circle(p.x, p.y, 10);
  n++;
  n = (n >= c.points.size())? 0 : n ;
}
