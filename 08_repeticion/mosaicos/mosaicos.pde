Tile tile;

void setup () {
  size(1000,1000);
  tile = new Tile("tile2.png", 100);
}

void draw () {
 float mux = 0;
 for (float y = 0; y < height; y += tile.h -20) {
    for(float x = 50 * mux; x < width; x += tile.w +3) {
      pushMatrix();
        translate(x,y);
        tile.Draw();
      popMatrix();
    }
    mux = (mux==1)?0:1;
  }
}

void Repeticion () {
  for (float x = 0; x < width; x += tile.w + 3) {
    for(float y = 0; y < height; y += tile.h +3) {
      pushMatrix();
        translate(x,y);
        tile.Draw();
      popMatrix();
    }
  }
}
