class Gizmo {
  float l;
  Gizmo () {
    l = 50; // Unidades
  }

  void Draw () {
    strokeWeight(5);
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
