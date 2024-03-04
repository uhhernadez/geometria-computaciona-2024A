Foot right, lefth;
boolean side;
void setup () {
  size(500, 500);
  right = new Foot(40, true);
  lefth = new Foot(40, false);
  right.Set(22,0);
  lefth.Set(-22,50);
  frameRate(1);
  side = false;
}

void draw () {
  //background(255);
  translate(width/2, height);
  scale(0.5);
  float t = millis()/1000.0f;
  
  if (side) {
    right.Draw();
    right.Translate(0,-140);
  } else {
    lefth.Draw();
    lefth.Translate(0,-140);
  }
  side = !side;
}
