class Gizmo {
  float l;
  float sw;

  Gizmo () {
    l = 50; // Unidades
    sw = 5;
  }
  
  Gizmo (float l, float sw) {
    this.l = l;
    this.sw = sw;
  }

  void Draw () {
    strokeWeight(sw);
    // Eje x
    stroke(255, 0, 0);
    line(0, 0, 0, l, 0, 0);
    // Eje y
    stroke(0, 255, 0);
    line(0, 0, 0, 0, l, 0);
    // Eje z
    stroke(0, 0, 255);
    line(0, 0, 0, 0, 0, l);
  }
}
