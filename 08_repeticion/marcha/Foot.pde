class Foot {
  PVector center;
  PImage img;
  boolean isRight;
  
  Foot (int width, boolean right) {
    center = new PVector(0,0);
    img = loadImage("zapato.png");
    img.resize(width, 0);
    isRight = right;
  }
  
  void Draw () {
    imageMode(CENTER);
    pushMatrix();
    translate(center.x, center.y);
      if(!isRight) {
        pushMatrix();
          scale(-1, 1);
          image(img, 0, 0);
        popMatrix();
      } else {
        image(img, 0, 0);
      }
    popMatrix();
    imageMode(CORNER);
  }  
  
  void Translate (float x, float y) {
    center.add(x, y);
  }
  
  void Set (float x, float y) {
    center.set(x, y);
  }
}
