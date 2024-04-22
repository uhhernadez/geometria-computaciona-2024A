class Grid {
  float max;
  float min;
  float l ;
  
  Grid () {
    l = 20;
    max = 200;
    min = -200;
  }
  
  void Draw () {
    stroke(255,0,0);
    for(float step = min; step <= max; step += l) {
      line(min, step, max, step);
      line(step, min, step, max);
    }  
  }
}
