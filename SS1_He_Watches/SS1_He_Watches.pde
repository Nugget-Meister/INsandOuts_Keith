//Keith Camacho, He Watches, Week 1

int size = 310;
int add = 1;
int min = 60;
int max = 380;


void setup() {
  size(1080, 720);
  background(0);
  noStroke();
}

void increaseCircle(){
      if (size > max)
      {
        add = -1;
      }
      if (size < min)
      {
        add = 1;
      }
      size = size + add;
  }

void draw() {
  //eyes  
  
  increaseCircle();
  
  fill(250, 250, 250);
  ellipse(880, 200, 400, 400);
  ellipse(200, 200, 400, 400);
  fill(0);
  ellipse(200, 200, size, size);
  ellipse(880, 200, size, size);


  //ground
  fill(139, 69, 19);
  rect(0, 650, 1080, 100);
  fill(124, 252, 0);
  rect(0, 600, 1080, 50);

  //house

  fill(225, 220, 200);
  triangle (150, 400, 450, 400, 300, 250);
  fill(255, 200, 100);
  rect(200, 400, 200, 200);

  //mouth
  fill(255);
  ellipse(540, 200, 100, 100);
  fill(0);
  ellipse(540, 200, 50, 50);
  rect(490, 150, 100, 50);
}

void keyPressed() {
  if (keyCode == 80) {
    size = size + 20;
    if (size > max){size=max;}
  }
  if (keyCode == 79) {
    size = size - 20;
    if (size < min){size=min;}
  }
}
