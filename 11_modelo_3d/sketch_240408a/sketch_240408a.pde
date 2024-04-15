PShape cubo;
PShape lego;
Gizmo g;

void setup () {
  size(512,512, P3D);
  cubo = loadShape("cubo.obj");
  lego = loadShape("lego_fix.obj");
  g = new Gizmo ();
  lego.rotateX(radians(90));
  lego.rotateZ(radians(180));
}

void draw () {
  background(0);
  float fov = PI/3.0;// 60°   
  perspective(fov, float(width)/float(height), 
                1, 1000);
  lights();              
  camera(100, 100, 100,
          0, 0 , 0,
          0, 0, -1);
  g.Draw();        
  pushMatrix();    
    float theta = 100*millis()/1000.0;
    rotateZ(radians(theta));
    //cubo.rotateX(radians(theta));
    shape(cubo); 
  popMatrix();
  pushMatrix();
    //rotateX(radians(90));
    //rotateY(radians(180));
    shape(lego);
  popMatrix();
}
