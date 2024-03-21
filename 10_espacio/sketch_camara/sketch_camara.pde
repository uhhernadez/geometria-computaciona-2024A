Gizmo g;
void setup() {
  size(512, 512, P3D);
  g = new Gizmo();
}

float zFar = 10;
void draw() {
  background(0);
  float t = millis () /1000.0;
  float r = 50;
  float x = r * cos (radians(10*t));
  float y = r * sin (radians(10*t));
  
  camera(x, y , 50, 
          0, 0, 0,
          0, 0, -1);
  float fov = PI/5.0; // Field Of View 180/3 = 60°
  perspective(fov, float(width)/float(height), 5, 1000);
        // -256,      256,      -256,      256
  //ortho(-width/2, width/2, -height/2, height/2); //
  //ortho(-25, 25, -25, 25); //
  lights();
  g.Draw();        
  stroke(0);
  strokeWeight(1);
  rotateY(radians(100*t));
  translate(0, 10, 0);
  box(10);    
  translate(0, 10, 0);
  sphere(5);
  zFar+= 0.2;
}
