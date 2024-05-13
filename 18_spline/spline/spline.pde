import Jama.*;

void setup () {
  size(500,500);
  double[][] array = {
                       {2., 1.,  0.},
                       {1., -1., 2.},
                       {0., 1.,  0.}
                     };
  Matrix A = new Matrix(array);
  double[][] arrayb = {
                        {3},
                        {1},
                        {-1},
                      };
  Matrix b = new Matrix(arrayb);
  Matrix x = A.solve(b);
  println(x.get(0,0));
  println(x.get(1,0));
  println(x.get(2,0));
}

void draw () {
  PVector p0 = new PVector(10,10);
  PVector p1 = new PVector(50, 80);
  PVector p2 = new PVector(100, 10);
  ArrayList<PVector> spline = Spline (p0, p1, p2);
  
  translate(width/2, height/2);
  noFill();
  beginShape();
  for (PVector p:spline) {
    vertex(p.x, p.y);
  }
  endShape();
  fill(230);
  circle(p0.x,p0.y, 10);
  circle(p1.x,p1.y, 10);
  circle(p2.x,p2.y, 10);
}


ArrayList<PVector> Spline (PVector p0, PVector p1, PVector p2) {
  double a11, a12, a21, a22, a23, a32, a33;
  
  a11 = 2 / (p1.x - p0.x);
  a12 = 1 / (p1.x - p0.x);
  a21 = 1 / (p1.x - p0.x);
  a22 = 2 * ( 1/(p1.x - p0.x) + 1 /(p2.x-p1.x));
  a23 = 1 / (p2.x - p1.x);
  a32 = 1 / (p2.x - p1.x);
  a33 = 2 / (p2.x - p1.x);
  
  double[][] aA = { {a11, a12, 0},
                    {a21, a22, a23},
                    {0  , a32, a33}};
  
  double b1, b2, b3;
  
  b1 = 3 * ((p1.y-p0.y)/
           ((p1.x-p0.x)*(p1.x-p0.x)));
  b2 = 3 * (
           (p1.y-p0.y)/
           ((p1.x-p0.x)*(p1.x-p0.x))
           +
           (p2.y-p1.y)/
           ((p2.x-p1.x)*(p2.x-p1.x))
           );
  b3 = 3 * ((p2.y-p1.y)/
           ((p2.x-p1.x)*(p2.x-p1.x))); 
  
  double[][] ab = {
                  {b1},
                  {b2},
                  {b3}
                  }; 
  Matrix A = new Matrix (aA);
  Matrix b = new Matrix (ab);
  Matrix x = A.solve(b);
  
  double k0 = x.get(0,0);
  double k1 = x.get(1,0);
  double k2 = x.get(2,0);
  
  double a_1 = k0 * (p1.x-p0.x) - (p1.y-p0.y);
  double b_1 = -k1 * (p1.x-p0.x) + (p1.y-p0.y);
  double a_2 = k1 * (p2.x-p1.x) - (p2.y-p1.y);
  double b_2 = -k2 * (p2.x-p1.x) + (p2.y-p1.y);

  ArrayList<PVector> points = new ArrayList<PVector>();
  for (double xx = p0.x; xx <= p1.x; xx+=0.01) {
      double t = (xx - p0.x) / (p1.x-p0.x);
      double y = (1-t) * p0.y 
                + t * p1.y
                + t *(1-t)*((1-t)*a_1 + t * b_1);
      points.add(new PVector((float)xx,(float)y));          
  }

  for (double xx = p1.x; xx <= p2.x; xx+=0.01) {
      double t = (xx - p1.x) / (p2.x-p1.x);
      double y = (1-t) * p1.y 
                + t * p2.y
                + t *(1-t)*((1-t)*a_2 + t * b_2);
       points.add(new PVector((float)xx,(float)y));          
  }

  return points;
}
