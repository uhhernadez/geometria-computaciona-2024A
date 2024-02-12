ArrayList<PVector> puntos;
PVector [] vertices;

void setup () {
  size (512, 512);
  puntos = new ArrayList<PVector>();
  vertices = new PVector[3];
  
  puntos.add(new PVector(100, 100));
  puntos.add(new PVector(100, 50));
  puntos.add(new PVector(0, 0));
  
  vertices[0] = new PVector(100, 100);
  vertices[1] = new PVector(100, 50);
  vertices[2] = new PVector(0, 0);
}

void draw () {
  beginShape();
    vertex(100,100);
    vertex(100, 50);
    vertex(0,0);
  endShape();
  
  beginShape();
    for (PVector p : puntos) {
      vertex(p.x, p.y);
    }
  endShape();
  
  beginShape();
    for (int k = 0; k < vertices.length; k++) {
      vertex(vertices[k].x, vertices[k].y);
    }
  endShape();
}
