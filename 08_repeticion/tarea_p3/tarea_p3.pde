PImage img;
Tile tile;
void setup () {
  img = loadImage("base.jpg");
  size(700, 500);
  tile = new Tile ();
  print(img.width);
}

void draw () {
  background(#F57E78);
  tile.Draw();
  fill(0);
  textSize(30);
  text("("+mouseX +"," + mouseY+ ")", mouseX, mouseY);
  noFill();
  strokeWeight(1);
  rect(0,0,188,135);
  for (float x = 0; x < width; x += 188) {
    for(float y = 0; y < height; y += 135) {
      pushMatrix();
        translate(x,y);
        tile.Draw();
      popMatrix();
    }
  }
}

void AyudaViz() {
  image(img, 0, 0);
  fill(255, 200);
  rect(0, 0, width, height);
  noFill();
  strokeWeight(3);
  stroke(230);
  for (float x = 0; x < width; x+=20) {
    line(x, 0, x, height);
  }
  for (float y = 0; y < height; y += 20) {
    line(0, y, width, y);
  }
  fill(0);
  textSize(30);
  text("("+mouseX +"," + mouseY+ ")", mouseX, mouseY);
}
