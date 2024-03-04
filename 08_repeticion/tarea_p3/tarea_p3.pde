PImage img;

void setup () {

  img = loadImage("base.jpg");
  size(700, 500);
  print(img.width);
}

void draw () {

  noFill();

  strokeWeight(20);
  stroke(50);
  stroke(#41060C);
  circle (139, 129, 60 );
  stroke(255);
  circle (139, 129, 150 );
  stroke(#D63131);
  circle (139, 129, 250 );

  strokeWeight(30);
  circle(86, 374, 50);
  strokeWeight(22);
  circle(86, 374, 135);

  stroke(255);
  strokeWeight(20);
  circle(350, 15, 50);

  strokeWeight(5);
  circle(350, 15, 110);

  stroke(#D63131);
  strokeWeight(20);
  circle(527, 83, 60);
  stroke(255);
  strokeWeight(30);
  circle(527, 83, 160);

  strokeWeight(5);
  circle(513, 328, 130);
  stroke(#41060C);
  strokeWeight(30);
  circle(513, 328, 200);
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
