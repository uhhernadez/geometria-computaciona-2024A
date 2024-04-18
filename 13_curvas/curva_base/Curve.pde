class Curve {
  ArrayList<PVector> points;
  float mint;
  float maxt;
  
  Curve (float min, float max) {
    maxt = max;
    mint = min;
    points = new ArrayList<PVector>();
    
    for (float t = min; t <= max; t += 0.01) {
      float x = fx(t);
      float y = fy(t);
      points.add(new PVector(x,y));
    }
  }
 
  void Draw () {
    beginShape();
      for (PVector p: points) {
        vertex(p.x, p.y);
      }
    endShape(CLOSE);
  }
  
  float fx(float t) {
    //return 50 * cos(t);
    return 16 * sin (t) * sin (t) * sin (t);
  }
  
  float fy(float t) {
    //return 50 * sin(t);
    return 13 * cos (t) - 5 * cos(2 * t) 
          - 2 * cos(3 * t) - cos (4 * t);
  }
  
  void Rotation (float theta) {
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
