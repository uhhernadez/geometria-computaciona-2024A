import Jama.*;
class Spline {
  PVector p0;
  PVector p1;
  PVector p2;
  float dt;
  ArrayList<PVector> puntos;
  
  Spline(float dt) {
    this.dt = dt;
    puntos = new ArrayList<PVector>();
  }

  void Calcular(PVector p0, PVector p1, PVector p2) {
   this.p0=p0;
   this.p1=p1;
   this.p2=p2;
   puntos.clear();
   
   float a11 = 2 / (p1.x - p0.x);
   float a12 = 1 / (p1.x - p0.x);
   
   float a21 = 1 / (p1.x - p0.x);
   float a22 = 2 * ( 1/(p1.x-p0.x) + 1/(p2.x-p1.x));
   float a23 = 1 / (p2.x - p1.x);
   
   float a32 = 1 / (p2.x -p1.x);
   float a33 = 2 / (p2.x - p1.x);
   
   float b1 = 3 * ((p1.y - p0.y) / ((p1.x -p0.x)*(p1.x -p0.x)));
   float b2 = 3 * ((p1.y - p0.y) / ((p1.x-p0.x)*(p1.x-p0.x)) 
                 + (p2.y - p1.y) / ((p2.x-p1.x)*(p2.x-p1.x)));
   float b3 = 3 * ((p2.y - p1.y) / ((p2.x-p1.x)*(p2.x-p1.x)));
   double [][] A ={
                  {a11, a12, 0},
                  {a21, a22, a23},
                  {0,   a32, a33}
                  };
   double [][] b = {
                   {b1},
                   {b2},
                   {b3}
                   }; 
    Matrix mA = new Matrix(A);
    Matrix mb = new Matrix(b);
    Matrix x = mA.solve(mb);
    
    float k0 = (float)x.get(0,0);
    float k1 = (float)x.get(1,0);
    float k2 = (float)x.get(2,0);
    
    float a_1 = k0 * (p1.x-p0.x) - (p1.y-p0.y);
    float b_1 = -k1 * (p1.x-p0.x) + (p1.y-p0.y);
    float a_2 = k1 * (p2.x-p1.x) - (p2.y-p1.y);
    float b_2 = -k2 * (p2.x-p1.x) + (p2.y-p1.y);
    
    for (float xx = p0.x; xx < p1.x; xx+=dt) {
      float t = (xx - p0.x) / (p1.x - p0.x);
      float y = (1 - t) * p0.y 
                + t * p1.y 
                + t * (1 -t) * ((1-t)*a_1 + t * b_1 );
      puntos.add(new PVector( xx, y));          
    }
    
    for (float xx = p1.x; xx < p2.x; xx+=dt) {
      float t = (xx - p1.x) / (p2.x - p1.x);
      float y = (1 - t) * p1.y 
                + t * p2.y 
                + t * (1 -t) * ((1-t)*a_2 + t * b_2 );
      puntos.add(new PVector( xx, y));          
    }
    
  }

  void Dibujar() {
    noFill();
      beginShape();
        for(PVector p: puntos) {
          vertex(p.x, p.y);
        }
      endShape();
    fill(127);
    
    circle(p0.x, p0.y, 10);
    circle(p1.x, p1.y, 10);
    circle(p2.x, p2.y, 10);
  }

}
