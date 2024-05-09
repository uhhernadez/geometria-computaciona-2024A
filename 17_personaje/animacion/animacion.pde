Character cat;
void setup () {
  size (500, 500);
  cat = new Character("dog");
  
}

void draw () {
  background(200);
  translate(width/2, height/2);
  cat.Draw();
}
void keyPressed () {
  float dx = 5;
  float dy = 5;
  if (key == 'a' || key == 'A') {
    cat.isWalking = true;
    cat.position.add(-dx,0);  
  }
  if (key == 'd' || key == 'D') {
    cat.isWalking = true;
    cat.position.add(dx,0);  
  }
  if (key == 's' || key == 'S') {
    cat.isWalking = true;
    cat.position.add(0,dy);  
  }
  if (key == 'w' || key == 'W') {
    cat.isWalking = true;
    cat.position.add(0,-dy);  
  }
}

void keyReleased() {
  cat.isWalking = false;
}
