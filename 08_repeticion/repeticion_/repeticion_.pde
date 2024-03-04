Tile tile;
ArrayList<Tile> tiles;

void setup () {
  size (320, 320);
  tile = new Tile (50,50);
  tiles = new ArrayList<Tile>();
  for (float x = 0; x < 300; x += 50) {
    for (float y = 0; y < 300; y += 50) {
      tiles.add(new Tile(x, y));
    }
  }
}

void draw () {
  background(255);
  translate(10,10);
  for (Tile t : tiles) {
    t.Draw();
  }
  //tile.Draw();
  //Tile t = new Tile ();
  //t.Draw();
}
