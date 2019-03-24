
void setup(){
  size(640,360);
  background(255);
}

float xOff = 0.0;
float yOff = 0.0;

void draw(){
  loadPixels();
  for(int x=0;x < width;x++){
     for(int y=0;y < height;y++){
       //random(255);
       float bright = map(noise(x,y),0,1,0,255);
       pixels[x+y*width] = color(bright);
       yOff +=0.01;
     }
     xOff += 0.01;
  }
  updatePixels();
}
