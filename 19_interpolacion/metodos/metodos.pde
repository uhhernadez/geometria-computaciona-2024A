float step (float x0, float x1, float t ) {
  return (t >= 0.5)? x1: x0;
}

float linear (float x0, float x1, float t ) {
  return x0 + t * (x1 - x0);
}

float cosine (float x0, float x1, float t ) {
  return linear(x0, x1,-cos(PI*t)/2 + .5 );
}

float smoothStep (float x0, float x1, float t ) {
  return linear(x0, x1, t * t * (3 - 2*t) );
}

void DrawHelper (float x, float y, float x0, float x1) {
  noFill();
  circle(x0, y, 20); // punto inicial
  circle(x1, y, 20); // punto final
  fill(125);
  circle(x, y, 20); // Elemento interpolado
}
float ti;
void setup () {
  size (500, 500);
  ti = millis()/1000.0;
}

void draw () {
  background(250);
  float tf = millis()/1000.0;
  float x0 = 125, x1 = 375;
  float t = (tf - ti)/2.0;
  float is = step(x0, x1, t);
  DrawHelper(is, 50, x0, x1);
  float il = linear (x0, x1, t);
  DrawHelper(il, 80, x0, x1);
  float ic = cosine(x0, x1, t);
  DrawHelper(ic, 110, x0, x1);
  float iss = smoothStep(x0, x1, t);
  DrawHelper(iss, 140, x0, x1);
}
