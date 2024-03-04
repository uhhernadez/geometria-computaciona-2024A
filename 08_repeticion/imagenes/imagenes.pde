Foot right, lefth;
PImage img;

void setup () {
  size(500, 500);
  img = loadImage("zapato.png");
  float ratio = 0.05;
  //img.resize(int(img.width*ratio), 
  //           int(img.height*ratio));
  img.resize(50,0); 
  imageMode(CENTER);
}

void draw () {
  background(255);
  translate(width/2, height/2);
  float t = millis()/1000.0f;
  //rotate(radians(50*t));
  image(img,0,0);
  pushMatrix();
    scale(-1,1);  
    translate(50,50);
    fill(255,0,0);
    circle(0,0,10);
    image(img,50,50);
  popMatrix();
  fill(255);
  circle(100,100,10);
}
