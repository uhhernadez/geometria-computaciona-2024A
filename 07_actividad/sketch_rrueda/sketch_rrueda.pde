Rueda r1, r2;
float vel;
float t;
PImage back;

void setup () {
  size(512, 512);
  float radio = 50;
  
  r1 = new Rueda(radio, -100, 50);
  r2 = new Rueda(radio, 50, 50);
  vel = 0.0;
  t=0.0;
  back = loadImage("back.jpg");
}

void draw () {
  translate(width / 2.0, height / 2.0);
  strokeWeight(5);
  image(back,-width / 2.0-t, -0.7*height);
  r1.Dibujar();
  r1.RotarRueda(-radians(vel));
  r2.Dibujar();
  r2.RotarRueda(-radians(vel));
  
  strokeWeight(10);
  line(r1.centro.x, r1.centro.y, r2.centro.x, r2.centro.y);
  line(r2.centro.x, r2.centro.y, r2.centro.x, r2.centro.y-150);
  if(keyPressed) {
    if (key == 'd' || key == 'D') {
      vel += 0.1;
      vel = (vel > 2.0)? 2 : vel;
    }
  } else {
    vel -= 0.01;
    vel = (vel < 0)? 0.0: vel;
  }
  t+= vel;
}

void keyPressed() {
  
  
}
