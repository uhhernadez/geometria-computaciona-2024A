class Curve {
  ArrayList<PVector> points;
  float mint;
  float maxt;
  boolean isclose;
  
  Curve (float min, float max) {
    points = new ArrayList<PVector>();
    mint = min;
    maxt = max;
    isclose = true;
  }
  
  void Eval () {
    points.clear();
    for (float t = mint; t <= maxt; t += 0.01) {
      float x = fx(t);
      float y = fy(t);
      float z = fz(t);
      points.add(new PVector(x, y, z));
    }  
  }
 
  void Draw () {
    noFill();
    beginShape();
      for (PVector p: points) {
        vertex(p.x, p.y);
      }
      if (isclose) {
        PVector start = points.get(0);
        vertex(start.x, start.y);
      }
    endShape();
  }
  
  float fx(float t) {
    return 0;
  }
  
  float fy(float t) {
    return 0;
  }
  
  float fz(float t) {
    return 0;  
  }
  
  void Rotate (float theta) {
    for (PVector p: points) {
      p.rotate(theta);
    }
  }
  
  void Scale(float s) {
    for (PVector p: points) {
      p.mult(s);
    }
  }
  
  void Translate(PVector d) {
    for (PVector p: points) {
      p.add(d.x,d.y);
    }
  }
}
