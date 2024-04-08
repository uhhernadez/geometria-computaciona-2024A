PShape cubo;
void setup () {
  size(512,512, P3D);
  cubo = loadShape("cubo.obj");
}

void draw () {
  background(0);
  float fov = PI/3.0;// 60°   
  perspective(fov, float(width)/float(height), 
                1, 1000);
  lights();              
  camera(10, 10, 10,
          0, 0 , 0,
          0, 0, -1);
  pushMatrix();    
    float theta = 100*millis()/1000.0;
    //rotateZ(radians(theta));
    cubo.rotateX(radians(theta));
    shape(cubo); 
  popMatrix();
}
