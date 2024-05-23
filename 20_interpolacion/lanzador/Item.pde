class Item {
  float ti;
  float T;
  PShape caparazon;
  PVector pi;
  PVector pf;
  boolean isEnd;
  
  Item (float xi,float yi, float xf, float yf, float duration, PShape p) {
    pi = new PVector(xi, yi);
    pf = new PVector(xf, yf);
    ti = millis ()/1000.0;
    isEnd = false;
    T = duration;
    caparazon = p;
  }
  
  void Draw () {
   float tc = millis() /1000.0;
   float t = (tc - ti) / T;
   if (t <= 1.0) {
     float x = lerp (pi.x, pf.x, t);
     float y = lerp (pi.y, pf.y, t);
     pushMatrix();
     translate(x,y);  
       pushMatrix();
        rotateZ(radians(5*millis()/10.0));
        shape(caparazon);
       popMatrix();
     popMatrix();
   }  else {
     isEnd = true;
   }
  }

}
