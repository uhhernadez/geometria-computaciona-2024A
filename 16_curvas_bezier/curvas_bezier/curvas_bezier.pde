BezierFirst b1;
BezierQuadratic q;
void setup () {
  size (500, 500);
  b1 = new BezierFirst(-50,-50, 
                       100, 100);
  q = new BezierQuadratic(-50, -50
                          200, 0,
                          100, 100);                       
}

void draw () {
  background(200);
  translate(width/2, height/2);
  b1.Draw();
  q.Draw/(;
}
