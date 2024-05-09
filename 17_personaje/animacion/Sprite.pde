class Sprite {
  ArrayList<PImage> sprites;
  float tf;
  int n;
  boolean isPlaying;
  boolean isLoop;
  boolean isPause;
  
  Sprite (String prefix, int N) {
    sprites = new ArrayList<PImage>();
    for (int i = 1; i <= N; i++) {
      String fullname = prefix +"_"+ i + ".png";
      println(fullname);
      sprites.add(loadImage(fullname));
    }
    float t = millis()/1000.0;
    tf = t;
    isPlaying = false;
    isLoop = false;
    isPause = false;
  }
  
  void Draw () {
    if (!isPlaying) {
      return;
    }
    pushMatrix();
      imageMode(CENTER);
      scale(0.25);
      image(sprites.get(n),0,0);
      imageMode(CORNER);
    popMatrix();
    
    
    
    float t = millis() / 1000.0;
    if ((t - tf)> 0.05) {
      tf = t;
      if (isPlaying && isLoop == false) {
        n++; 
        isPlaying = (n == sprites.size())? false: true;
      } else if(isLoop) {
        n = ((n+1)==sprites.size())? 0: n+1;
      }
    }
  }
  
  void Play () {
    if (!isPlaying) {
      n = 0;
    }
    isPlaying = true;
  }
  
  void Pause () {
  
  }
  
  void Stop () {
  
  }
  
  void Loop () {
    isLoop = !isLoop;
    if (isLoop) {
      Play();
    } else {
      isPlaying = false;
    }
  }
  
}
