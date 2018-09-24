// Declare and initialize variables
int x = 0;
int y = 350;

// Set up size of canvas, background, and frame rate
void setup() {
  size(500, 700);
  background(0); 
  frameRate(10);
}

// Call the functions heart and cardiograph;
void draw() {
  heart();
  cardiograph();
}

// heart() draws a heart in the background
void heart() {
  noFill();
  stroke(255, 211, 246);
  strokeWeight(5);
  bezier(250, 270, 300, 150, 550, 300, 250, 500);
  bezier(250, 270, 200, 150, -50, 300, 250, 500);
}

// cardiograph() draws the random heart beats using Math.random()
void cardiograph() {
  stroke(255, 211, 246);
  strokeWeight(5);
  
  int endx = x + (int)(Math.random() * 10) + 10;
  int endy = y + (int)(Math.random() * 50) - 10; 
  
  if (endy < 200 || endy > 500)
    endy = 300;
  line(x, y, endx, endy);
  x = endx;
  y = endy;
    
  if (endx > 500) {
    x = 0;
    y = 400;
    background(0);
    heart(); 
  } 
}

  