//Keith Camacho, He Watches, Week 1

import processing.serial.*;

Serial myPort;
int val;  // port reader

int size = 310;
int add = 1;
int inc = 1;
int min = 60;
int max = 380;

int mult = 1;


void setup() {
  size(1080, 720);
  background(0);
  noStroke();
  
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
  
  
  
}



void draw() {
  //eyes  
  clear();
  grounderA(val);
  
  if(myPort.available() > 0){
    val = myPort.read();
  }
  
  increaseCircle();
  canvas();
  
  fill(200,200,0);
  textSize(18);
  text(val, 800,500);
  
  grounderB(val);
  
  
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

void grounderA(int value){
  
  if (value > 80){background(value,value/3,value/4); }else{background(0);}

}

void grounderB(int value){
  if (value > 140){fill(100+random(50),0,0);textAlign(CENTER);textSize(200);text("NUGGET", (width+random(50))/2,(height+random(50))/2);}

}

void increaseCircle(){
    //add, mult, size, max, min
    
    //use ardino here to minimize epileptic risk, anything higher hurts eyes
      inc = val/8;
      
      
     //  use increment separate from add, allows for proper functionality
      add = inc * mult;    
      size = size + add;
      
      if (size > max){
       mult = -1;
       size = max;
      }
      if (size < min){
       mult = 1;
       size = min;
      }
      
      
      
  }
  
  void canvas(){
  //eyes
  fill(250, 250, 250);
  ellipse(880, 200, 400, 400);
  ellipse(200, 200, 400, 400);
  //iris
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
