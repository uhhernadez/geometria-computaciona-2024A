class Steve {
  Part leg_right;
  Part leg_lefth;
  Part body;
  Part arm_right;
  Part arm_lefth;
  Part head;
  
  PVector pos;
  float theta;

  Steve (float x, float y, float z) {
    pos = new PVector(x, y, z);
    pos = PVector.random3D().mult(20);
    theta = radians(random(-90,90));
    
    leg_right = new Part(2.5, 0, 15, 0, 0, -7.5, 5, 5, 15);
    leg_lefth = new Part(-2.5, 0, 15, 0, 0, -7.5, 5, 5, 15);
    body = new Part(0, 0, 21, 0, 0, 0, 10, 5, 12);
    arm_right = new Part(7.5, 0, 27, 0, 0, -7.5, 5, 5, 15);
    arm_lefth = new Part(-7.5, 0, 27, 0, 0, -7.5, 5, 5, 15);
    head = new Part(0, 0, 32, 0, 0, 0, 10, 10, 10);
  }
  
  void Draw () {
    pushMatrix();
      rotateZ(theta);
      translate(pos.x,pos.y, pos.z);
      pushMatrix();
        float t = millis()/1000.0;
        leg_right.RotateX(radians(45*sin(2*PI*t)));
        leg_right.Draw(); 
        leg_lefth.RotateX(radians(45*cos(2*PI*t + PI/2)));
        leg_lefth.Draw();
        body.Draw();
        arm_right.Draw();
        arm_right.RotateX(radians(45*cos(2*PI*t + PI/2)));
        arm_lefth.Draw();
        arm_lefth.RotateX(radians(45*sin(2*PI*t)));
        head.Draw();
      popMatrix();
    popMatrix();
  }

}
