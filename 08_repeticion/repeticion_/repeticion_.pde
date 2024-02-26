Tile tile;

void setup () {
  size (320, 320);
  tile = new Tile ();
}

void draw () {
  background(255);
  translate(10,10);
  tile.Draw();
  //Tile t = new Tile ();
  //t.Draw();
}
