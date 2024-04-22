class Curve {
  ArrayList<PVector> points;
  float mint;
  float maxt;
  float radio;
  
  Curve (float min, float max, float radio) {
    maxt = max;
    mint = min;
    this.radio = radio;
    points = new ArrayList<PVector>();
    
    for (float t = min; t <= max; t += 0.01) {
      float x = fx(t);
      float y = fy(t);
      points.add(new PVector(x, y, 0));
    }
  }
 
  void Draw () {
    noFill();
    beginShape();
      for (PVector p: points) {
        vertex(p.x, p.y);
      }
    endShape(CLOSE);
  }
  
  float fx(float t) {
    return radio * cos(t);
  }
  
  float fy(float t) {
    return radio * sin(t);
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
