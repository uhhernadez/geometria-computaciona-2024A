class Item {
  float ti;
  float T;
  PShape caparazon;
  PVector pi;
  PVector pf;
  boolean isEnd;
  
  Item (float xi,float yi, float xf, float yf, float duration) {
    pi = new PVector(xi, yi);
    pf = new PVector(xf, yf);
    ti = millis ()/1000.0;
    isEnd = false;
    T = duration;
    caparazon = loadShape("Caparazon.obj");
    caparazon.rotateX(radians(90));
  }
  
  void Draw () {
   float tc = millis() /1000.0;
   float t = (tc - ti) / T;
   if (t <= 1.0) {
     float x = lerp (pi.x, pf.x, t);
     float y = lerp (pi.y, pf.y, t);
     beginShape();
     translate(x,y);  
       beginShape();
        rotateZ(radians(5*millis()/10.0));
        shape(caparazon);
       endShape();
     endShape();
   }  else {
     isEnd = true;
   }
  }

}
