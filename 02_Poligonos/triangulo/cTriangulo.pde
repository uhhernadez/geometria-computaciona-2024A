class Triangulo {
  PVector [] puntos;
  
  Triangulo () {
    puntos = new PVector[3]; // Tamaño fijo
    puntos[0] = new PVector(0, 0);
    puntos[1] = new PVector(0, 50);
    puntos[2] = new PVector(50, 50);
  }
  
  void Dibujar () {
    beginShape();
      for (PVector p: puntos) {
        vertex(p.x, p.y);
      }
    endShape(CLOSE);
  }

}
