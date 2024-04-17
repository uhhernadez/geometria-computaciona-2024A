

void setup () {
  size (512, 512);
}

void draw () {
  translate(width/2, height/2);
  beginShape();
  for (float theta = 0.0; theta <= 2*PI; theta += radians(45)) {
    float x = 50 * cos (theta);
    float y = 50 * sin (theta);
    vertex(x, y);
  }
  endShape(CLOSE);
}
