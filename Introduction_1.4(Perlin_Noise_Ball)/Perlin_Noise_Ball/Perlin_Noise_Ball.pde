float t = 0;

void setup(){
  size(640,360);
  background(255);
}

void draw(){
  clear();
  background(255);
  float x = noise(t);
  float n = map(x,0,1,0,width);
  ellipse(n,180,16,16);
  println(x);
  t+=0.01;
}
