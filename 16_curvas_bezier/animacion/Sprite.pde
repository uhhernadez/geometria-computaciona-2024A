class Sprite {
  ArrayList<PImage> sprites;
  float tf;
  int n;
  
  Sprite (String prefix, int N) {
    sprites = new ArrayList<PImage>();
    for (int i = 1; i <= N; i++) {
      String fullname = prefix +"_"+ i + ".png";
      println(fullname);
      sprites.add(loadImage(fullname));
    }
    float t = millis()/1000.0;
    tf = t;
  }
  
  void Draw () {
    pushMatrix();
      scale(0.5);
      image(sprites.get(n),0,0);
    popMatrix();
    
    float t = millis() / 1000.0;
    if ((t - tf)> 0.5) {
      tf = t;
      n = ((n+1)==sprites.size())? 0: n+1;
    }
  }
}
