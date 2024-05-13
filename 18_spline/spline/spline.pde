import Jama.*;

void setup () {
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

}


void Spline (PVector p0, PVector p1, PVector p2) {
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

  for (float xx = p0.x; xx <= p1.x; xx+=0.01) {
      float t = (xx - p0.x) / (p1.x-p0.x);  
  }



}
