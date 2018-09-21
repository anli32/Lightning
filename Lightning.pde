int x = 0;
int y = 300;

void setup() {
  size(500, 800);
  background(0);
  noFill();
  stroke(255, 211, 246);
  strokeWeight(10);
  //bezier(100, 300, 150, 200, 400, 350, 100, 500);
  bezier(250, 300, 300, 200, 550, 350, 250, 500);
  bezier(250, 300, 200, 200, -50, 350, 250, 500);
  
}

void draw() {
  int endx = x + (int)(Math.random() * 10) + 10;
  int endy = y + (int)(Math.random() * 10) +10;
  if (!(endy > 200 && endy < 500)) 
    endy = -endy;
   line(x, y, endx, endy);
   x = endx;
   y = endy;
}
  