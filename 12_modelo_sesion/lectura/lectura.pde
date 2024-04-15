import processing.sound.*;
SoundFile tecla;

PShape rata;
PShape piano;
Gizmo g;
void setup () {
  size(512, 512, P3D);
  g = new Gizmo ();
  rata = loadShape("rata_centrada.obj");
  piano = loadShape("piano.obj");
  rata.rotateY(radians(90));
  rata.scale(0.3);
  tecla = new SoundFile(this, "A.wav");
}

void draw () {
  background(255);
  lights();
  camera(2, 2, 2, 
           0,   0,   0,
           0,   -1,  0);
  g.Draw();
  float fov = radians(60);
  perspective(fov, float(width)/float(height), 
            1, 1000);
  shape(piano);
  pushMatrix();
    translate(0,.8,0.1);
    pushMatrix();
      float y = 0.1 * sin(2*PI*0.5*(millis()/1000.0));
      if(!tecla.isPlaying() && y < 0) {
        tecla.play();
      }

      translate(0,
                y,
                0);  
      shape(rata);
    popMatrix();
  popMatrix();
}
