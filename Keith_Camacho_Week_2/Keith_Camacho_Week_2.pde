//Keith Camacho, Delayed color changing
//press spacebar to change color of background
//hover mouse over center to display box
//click mouse to change display box color with delay
//a second red box will display if you cannot change the color

float colorA = 0;
float colorB = 0;
float colorC = 0;
float colorBack = 255;
int delay = 0;
int delayCut = 30;
boolean isDisplay;

void setup(){
  size(1000, 1000);  
}



void draw()
  {
    //shorten mousex and y for easier reference
    int x = mouseX;
    int y = mouseY;
    
    //set background and clear for update
    clear();
    background(55, 55, colorBack);
    
    
    //positional based red boxes
    fill(255,0,0);
    if (x > 500){
      if (y > 500){
        rect(500,500,1000,1000);      
      } else if (y < 500){
        rect(500, 0, 500, 500);
      }
    } else{
      if (y > 500){
        rect(0, 500, 500, 1000);
      } else {
        rect(0, 0, 500, 500);
      }
    }
      
      
      //randomize centered box color
      if (delay < delayCut){
      delay++;
      }
      if(mousePressed){
        if (delay == delayCut){
          if (isDisplay){ 
            colorA = random(200) + 55;
            colorB = random(200) + 55;
            colorC = random(200) + 55;
            delay = delay - delayCut;
          }
        }
      }
      
      //center box
      if (x > 250 && x < 750){
        if (y > 250 && y < 750){
          fill(colorA, colorB, colorC);
          rect(250, 250, 500, 500);
          isDisplay = true;
          // put red box if cant change color
          if (delay < delayCut){
            fill(255, 0, 0);
            rect(375, 375, 250, 250);
          }         
        }else{isDisplay = false;}   
      }else{isDisplay = false;}  
  }
  
void keyPressed(){
  if (keyCode == 32){
    
      colorBack = random(100)+ 150;
  } else {
      colorBack = 255;
  }
  
}


void changecolor(float a, float b, float c, float d){
}
