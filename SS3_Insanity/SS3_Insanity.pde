//Keith Camacho, He Watches, Week 1
//press o/p to increase/decrease size of eyeball
//press spacebar to initiate resonance cascade


int size = 310;
int add = 1;
int min = 60;
int max = 380;
int distanceLattice = 10;
int latticeWeight = 1;
int beginDie = 0;


void setup() {
  size(1080, 720);
  background(0);
  noStroke();
}

void draw() {
 
  
  if(beginDie == 1){lattice();}

  increaseCircle();
  
//mouth

  
    fill(255);
    ellipse(540, 200, 100, 100);
    fill(0);
    ellipse(540, 200, 50, 50);
  
  //Layer 1
    
    
 //Layer 2
 
    strokeWeight(0);
    
  //eyes  
  
  
  
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


  
  
}



void keyPressed() {
  if (keyCode == 80) {
    size = size + 20;
    if (size > max){size=max;}
  }
  if (keyCode == 79) {
    size = size - 20;
    if (size < min){size=min;};   
  }
  
// add ability to resonance cascade
   if (keyCode == 32){
     if(beginDie == 0){
       beginDie = 1;
     } else{
       beginDie = 0;
       clear();
     }
  }
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

void lattice(){
  
  for (int i=0; i < width; i+=distanceLattice){    
    stroke(random(20)+100,0,0);
    strokeWeight(2+random(10));
    line(i+random(20),0,i+random(20),height);
    }
  for (int i=0; i < height; i+=distanceLattice){
     stroke(random(20)+100,0,0);
     strokeWeight(2+random(10));
     line(0,i+random(20),width,i+random(20));
  }
 
}
