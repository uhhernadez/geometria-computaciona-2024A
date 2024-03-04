class Tile {
  float scale;

  Tile () {
    scale = 0.3;
  }

  void Draw () {
    pushMatrix();
    scale(this.scale);
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
    popMatrix();
  }
}
