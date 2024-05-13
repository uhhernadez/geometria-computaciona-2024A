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
