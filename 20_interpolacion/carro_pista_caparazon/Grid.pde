class Grid {
  float max;
  float min;
  float l ;
  
  Grid () {
    l = 20;
    max = 1000;
    min = -1000;
  }
  
  void Draw () {
    stroke(255,0,0);
    strokeWeight(.3);
    for(float step = min; step <= max; step += l) {
      line(min, step, max, step);
      line(step, min, step, max);
    }  
  }
}
