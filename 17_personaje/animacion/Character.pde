class Character {
  Sprite walk;
  Sprite run;
  Sprite idle;
  Sprite dead;
  Sprite fall;
  Sprite hurt;
  Sprite jump;
  Sprite slide;

  Character (String animal) {
      walk = new Sprite("dog/Walk", 10);
      run = new Sprite("dog/Run", 8);
      idle = new Sprite("dog/Idle", 10);
      dead = new Sprite("dog/Dead", 10);
      fall = new Sprite("dog/Fall", 8);
  hurt = new Sprite("dog/Hurt", 10);
  jump = new Sprite("dog/Jump",8);
  slide = new Sprite("dog/Slide", 10);
  }

}
