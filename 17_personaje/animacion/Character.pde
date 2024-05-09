class Character {
  Sprite walk;
  Sprite run;
  Sprite idle;
  Sprite dead;
  Sprite fall;
  Sprite hurt;
  Sprite jump;
  Sprite slide;
  boolean isWalking;
  boolean isAlive;
  PVector position;
  Character (String animal) {
    walk = new Sprite(animal + "/Walk", 10);
    run = new Sprite(animal + "/Run", 8);
    idle = new Sprite(animal + "/Idle", 10);
    dead = new Sprite(animal + "/Dead", 10);
    fall = new Sprite(animal + "/Fall", 8);
    hurt = new Sprite(animal + "/Hurt", 10);
    jump = new Sprite(animal + "/Jump", 8);
    slide = new Sprite(animal + "/Slide", 10);
    isWalking = false;
    isAlive = true;
    walk.Loop();
    idle.Loop();
    position = new PVector();
  }
  void Draw () {
    if (!isAlive) return;
    
    pushMatrix();
      translate(position.x, position.y);
      if (isWalking) {
        walk.Draw();
      } else {
        idle.Draw();
      }
    popMatrix();
  }
  void Kill () {
    isAlive = false;
  }
  
}
