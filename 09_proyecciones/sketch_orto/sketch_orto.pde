ArrayList <PVector> cubo;

void setup () {
  size (512, 512);
  cubo = new ArrayList<PVector> ();
  
  cubo.add(new PVector(50, 50, 50));
  cubo.add(new PVector(50, -50, 50));
  cubo.add(new PVector(-50, -50, 50));
  cubo.add(new PVector(-50, 50, 50));
  cubo.add(new PVector(50, 50, -50));
  cubo.add(new PVector(50, -50, -50));
  cubo.add(new PVector(-50, -50, -50));
  cubo.add(new PVector(-50, 50, -50));
}
float d = 100.0;
void draw () {
  background(255);
  translate(width/2, height/2);
  ArrayList<PVector> cubo2D = new ArrayList<PVector>();
  
  for (PVector v: cubo) {
    //PVector rv = RotarX(v, -radians(0.1*millis()));
    //PVector rv = RotarY(v, -radians(0.1*millis()));
    PVector rv = RotarZ(v, -radians(0.1*millis()));
    //PVector pv = Ortonormal(rv);
    rv.add(0,0,100);
    PVector pv = Perspectiva(rv, d);
    pv.div(pv.z);
    cubo2D.add(pv);  
    //d += 0.1;
  }
   
  DibujarCubo2D(cubo2D);
}

PVector Mux3x3(float [][] M,PVector v) {
  PVector vp = new PVector();
  vp.x = M[0][0] * v.x + M[0][1] * v.y + M[0][2]* v.z;
  vp.y = M[1][0] * v.x + M[1][1] * v.y + M[1][2]* v.z;
  vp.z = M[2][0] * v.x + M[2][1] * v.y + M[2][2]* v.z;
  return vp;
}

PVector Ortonormal(PVector v) {
  float [][] orto = {
    {1, 0, 0},
    {0, 1, 0},
    {0, 0, 0},
  };
  return Mux3x3(orto, v);
}

PVector Perspectiva(PVector v, float d) {
  float [][] perspectiva = {
    {1, 0, 0},
    {0, 1, 0},
    {0, 0, 1/d},
  };
  return Mux3x3(perspectiva, v);
}

PVector RotarX (PVector v, float theta) {
  float [][] Rx = {
    {1, 0, 0},
    {0, cos(theta), -sin(theta)},
    {0, sin(theta), cos(theta)}
  };
  return Mux3x3(Rx, v);
}

PVector RotarY (PVector v, float theta) {
  float [][] Ry = {
    {cos(theta), 0, sin(theta)},
    {0, 1, 0},
    {-sin(theta), 0, cos(theta)}
  };
  return Mux3x3(Ry,v);
}

PVector RotarZ (PVector v, float theta) {
  float [][] Ry = {
    {cos(theta), -sin(theta), 0},
    {sin(theta), cos(theta), 0},
    {0, 0, 1}
  };
  return Mux3x3(Ry,v);
}


void DibujarCubo2D(ArrayList<PVector> c) {
  // Cara de arriba
  Linea(c.get(0), c.get(1));
  Linea(c.get(2), c.get(1));
  Linea(c.get(2), c.get(3));
  Linea(c.get(0), c.get(3));
  // Cara abajo
  Linea(c.get(4), c.get(5));
  Linea(c.get(5), c.get(6));
  Linea(c.get(6), c.get(7));
  Linea(c.get(4), c.get(7));
  // lados
  Linea(c.get(0), c.get(4));
  Linea(c.get(1), c.get(5));
  Linea(c.get(2), c.get(6));
  Linea(c.get(3), c.get(7));
}

void Linea (PVector a, PVector b) {
  line(a.x, a.y, b.x, b.y);
}
