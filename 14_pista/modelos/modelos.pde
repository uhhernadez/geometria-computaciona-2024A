PShape gocart;

void setup () {
  size(512, 512, P3D);
  gocart = loadShape("KART.obj");  
}

void draw () {
  lights();
  camera(20, 20, 20,
         0,0,0,
         0,0,-1);
  
  float fov = PI/3.0;
float cameraZ = (height/2.0) / tan(fov/2.0);
perspective(fov, float(width)/float(height), 
            0.01, cameraZ*10.0);
            shape(gocart);
}
