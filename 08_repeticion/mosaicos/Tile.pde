class Tile {
  PImage img;
  int w,h;
  Tile (String filename, float width) {
    img = loadImage(filename);
    if (img == null) {
      println("No se puedo leer la imagen "+
              filename);
      return;
    }
    img.resize(int(width), 0);
    w = img.width;
    h = img.height;
  }
  
  void Draw () {
    if(img==null) {
      return;
    }
    image(img, 0, 0);
  }
}
