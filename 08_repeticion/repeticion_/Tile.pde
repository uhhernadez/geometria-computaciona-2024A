class Tile {
  PVector center;
  float l, l1, l2;
  float delta1, delta2;
  // Apariencia
  color lsc, l1sc, l2sc;
  color fc, fc1, fc2;
  float sw, sw1, sw2;
  
  Tile () {
    center = new PVector (0, 0);
    l = 50;
    delta1 = random(4, 12);
    l1 = l - 2 * delta1;
    
    delta2 = random(4, 12);
    l2 = l1 - 2 * delta2;
    
    lsc = GetRandomColor(); 
    l1sc = GetRandomColor(); 
    l2sc = GetRandomColor();
    fc = GetRandomColor(); 
    fc1 = GetRandomColor();
    fc2 = GetRandomColor();
    sw = random (1, 3); 
    sw1 = random (1, 3); 
    sw2 = random (1, 3);
    
  }
  
  void Draw () {
    stroke(lsc); fill(fc); strokeWeight(sw);
    rect(center.x, center.y, l, l);
    float x1 = center.x + delta1;
    float y1 = center.y + delta1; 
    stroke(l1sc); fill(fc1); strokeWeight(sw1);
    rect (x1, y1, l1, l1);
    float x2 = x1 + delta2;
    float y2 = y1 + delta2;
    stroke(l2sc); fill(fc2); strokeWeight(sw2);
    rect (x2, y2, l2, l2);
  
  }  
  
  color GetRandomColor() {
    float r = random(0, 255);
    float g = random(0, 30);
    float b = random(0, 20);
    return color(r, g, b);
  }
  
}
