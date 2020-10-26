
//Variables
int state = 0;


//Sketch Variables
//--Sketch 1 [ Delayed Color ] 
    float colorA = 0;
    float colorB = 0;
    float colorC = 0;
    float colorBack = 255;
    int delay = 0;
    int delayCut = 30;
    boolean isDisplay;
    
//--Sketch 2 [ Insanity ]
    int size = 310;
    int add = 1;
    int distanceLattice = 10;
    int latticeWeight = 1;
    int beginDie = 0;


//--Sketch 3 [Nugget Meister]
    PImage[] imgSeq = new PImage[6];
    PImage nugget;
    int index = 0;
    float variance;
    boolean load = false;





void setup(){
  size(1000, 1000);
  background(0);
  noStroke();
  imageMode(CENTER);

  
}

void draw(){
  background(0);
  if(state == 0){menu();}
  if(state == 1){sketchA();}
  if(state == 2){sketchB();}
  if(state == 3){sketchC();}
}




// Custom setup

void menu()
{
  noStroke();
  textAlign(RIGHT);
  fill(200,200,0);
  text("Keith Camacho",width-20,50);
  text("Short Study Compilation",width-20,75);
  
//--Button 1
        // button((width/2)-100,200,200,50,255);
    if(mouseX > (width/2)-100  && mouseX < ((width/2)-100)+200 && mouseY > 200 && mouseY < 200+50 ){
         
         if(mouseX > ((width/2)-100) && mouseX < ((width/2)-100)+200 && mouseY > 200 && mouseY < 200+50 && mousePressed){
            //Button Pressed
                  button((width/2)-100,200,200,50,100,"Sketch 1");
                  state = 1;
                  
            //if highlighted
            }else{button((width/2)-100,200,200,50,150,"Sketch 1");}  
            
            //Otherwise
            }else{button((width/2)-100,200,200,50,255,"Sketch 1");}
    
//--Button 2
    if(mouseX > (width/2)-100  && mouseX < ((width/2)-100)+200 && mouseY > 300 && mouseY < 300+50 ){
         
         if(mouseX > ((width/2)-100) && mouseX < ((width/2)-100)+200 && mouseY > 300 && mouseY < 300+50 && mousePressed){
            //Button Pressed
                  button((width/2)-100,300,200,50,100,"Sketch 2");
                  state = 2;
                  
            //if highlighted
            }else{button((width/2)-100,300,200,50,150,"Sketch 2");}  
            
            //Otherwise
            }else{button((width/2)-100,300,200,50,255,"Sketch 2");}
          

           
//--Button 3
     if(mouseX > (width/2)-100  && mouseX < ((width/2)-100)+200 && mouseY > 400 && mouseY < 400+50 ){
         
         if(mouseX > ((width/2)-100) && mouseX < ((width/2)-100)+200 && mouseY > 400 && mouseY < 400+50 && mousePressed){
            //Button Pressed
                  button((width/2)-100,400,200,50,100,"Sketch 3");
                  state = 3;
                  
            //if highlighted
            }else{button((width/2)-100,400,200,50,150,"Sketch 3");}  
            
            //Otherwise
            }else{button((width/2)-100,400,200,50,255,"Sketch 3");}


}


// if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed )

void button(int x,int y,int w,int h,int fill,String text){
     fill(fill);
     rect(x,y,w,h);
     fill(20);
     textSize(20);
     textAlign(CENTER);
     text(text,x+(w/2),y+((h/2)+10));
     }
                 

//---------------------------------------------------


// Setup Intermediary Screens





//------------------------------------------
void sketchA(){
  //Sketch 1 SS2_Delayed Color
  //Mouse over areas to have a box appear, click on the center box to change its color         
  //------------
  
  //shorten mousex and y for easier reference
    int x = mouseX;
    int y = mouseY;
    
    //set background and clear for update
          clear();       
          background(55, 55, colorBack);
          
          
          //---positional based red boxes
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
  
           
  
  exitButton();
  
  fill(255);
  text("Press Spacebar to change background.", width/2, 800);
  text("Click on the center to change the center box color.", width/2, 830);
 
}

//------------------------------------------

void sketchB(){
//--Sketch 2 SS3_Insanity
//press spacebar to initiate resonance cascade
  clear();
  if(beginDie == 1){lattice();}
  exitButton();
  
  fill(255);
  text("Press Spacebar to begin the lattice.", width/2, 800);
  text("Press again to end the lattice." , width/2, 830);
}

//------------------------------------------

void sketchC(){
//--Sketch 3 SS4_Nugget Meister
   setupC();
   background(variance/4,0,0);
   circleInsane((width/2)-300, height/2);
   nugget(random(variance)+(width/2)-(variance/2), random(variance)+(height/2)-(variance/2));
   exitButton();
   
   
   
   fill(255);
   text("Press o/p keys to increase/decrease the nugget's rage",width/2, 800);
}



//-------------------------------------






//--Consolidated Commands

void keyPressed(){
  
  //Check if Sketch 1
  if(state == 1){if (keyCode == 32) {colorBack = random(100)+ 150;} else {colorBack = 255;}}
 
  //Check if Sketch 2
  if(state == 2){if (keyCode == 32) {if(beginDie == 0){beginDie = 1;} else{beginDie = 0;strokeWeight(0);clear();}}}
  
  //Check if Sketch 3
  if(state == 3){if (keyCode == 80) {size = size + 20;variance = variance + 50;}
                 if (keyCode == 79) {size = size - 20;variance = variance - 50;}
                 }
                 
  }




void exitButton(){
//exit button
      if(mouseX > 20  && mouseX < 20+50 && mouseY > 20 && mouseY < 20+50){
             
             if(mouseX > 20  && mouseX < 20+50 && mouseY > 20 && mouseY < 20+50 && mousePressed){
                //Button Pressed
                      button(20,20,50,50,100,"x");
                      state = 0;
                      beginDie = 0;
                      variance = 0;
                      
                //if highlighted
                }else{button(20,20,50,50,150,"x");}  
                
                //Otherwise
                }else{button(20,20,50,50,255,"x");}     

}







//------------------------------------




//--Sketch Related Functions


//Sketch 2
    
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
    

//--

//Sketch 3


void setupC(){
 if(load == false){ 
     imgSeq[0] = loadImage("10001.png");
     imgSeq[1] = loadImage("10002.png");
     imgSeq[2] = loadImage("10003.png");
     imgSeq[3] = loadImage("10004.png");
     imgSeq[4] = loadImage("10005.png");
     imgSeq[5] = loadImage("10006.png");
     nugget = loadImage("nugget.jpg");
     imageMode(CENTER);
     load = true;     
     
   }
   if(variance < 0){variance = 0;}
}


void circleInsane(int a, int b){ 
  
    image(imgSeq[index],a,b);
    index++;
    if(index == 5){index = 0;}
   }
   
void nugget(float c, float d){
    image(nugget,c,d);
    textSize(32);
    textAlign(CENTER);
    text("nugget",c,d+200);
  }
