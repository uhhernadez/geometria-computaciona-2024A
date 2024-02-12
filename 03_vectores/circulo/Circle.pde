class Circle {
  float r;
  
  Circle (float radio) {
    r = radio;
  }

  void Draw () {
    beginShape();
      vertex(0,0);
      for (float theta = 0; theta <= 2 * PI; theta += radians(1)) {
        float x = r * cos (theta);
        float y = r * sin (theta);
        vertex(x,y);
      }
    endShape(CLOSE);
  }

}
