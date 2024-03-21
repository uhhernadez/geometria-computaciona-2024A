class Part {
  PVector offset;
  PVector pos;
  PVector rot;
  PVector size;
  Gizmo g;
  Part (float x, float y, float z, 
        float ox, float oy, float oz,
        float sx, float sy, float sz) {
    pos = new PVector (x, y, z);
    offset = new PVector (ox, oy, oz);
    g = new Gizmo(10, 1);
    rot = new PVector(0, 0, 0);
    size = new PVector(sx, sy, sz);
  }
  
  void Draw () {
    //float t = millis() /1000.0;
    pushMatrix();
      translate(pos.x, pos.y, pos.z);
      //rotateX(radians(45*sin(2*PI*t)));
      rotateX(rot.x);
      rotateY(rot.y);
      rotateZ(rot.z);
      g.Draw();
      pushMatrix();
        translate(offset.x, offset.y, offset.z);
        box(size.x, size.y, size.z);
      popMatrix();
    popMatrix();   
  }
  
  void RotateX (float x) {
    rot.set(x, 0, 0);
  }
  
  void RotateY (float y) {
    rot.set(0, y, 0);
  }
  
  void RotateZ (float z) {
    rot.set(0, 0, z);
  }
}
