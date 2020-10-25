
//Variables
int state = 0;


//Sketch Variables
//--Sketch 1 Delayed Color (Variables)
    float colorA = 0;
    float colorB = 0;
    float colorC = 0;
    float colorBack = 255;
    int delay = 0;
    int delayCut = 30;
    boolean isDisplay;
    
//--Sketch 2 Insanity
    int size = 310;
    int add = 1;
    int min = 60;
    int max = 380;
    int distanceLattice = 10;
    int latticeWeight = 1;
    int beginDie = 0;


//--Sketch 3 [Placeholder]





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
 
}

//------------------------------------------

void sketchB(){
//--Sketch 2 SS3_Insanity
//press o/p to increase/decrease size of eyeball
//press spacebar to initiate resonance cascade

  ss2Draw();
  exitButton();
}

//------------------------------------------

void sketchC(){

  exitButton();
}










//--Consolidated Commands

void keyPressed(){
  
  //Check if Sketch 1
  if(state == 1){if (keyCode == 32) {colorBack = random(100)+ 150;} else {colorBack = 255;}}
 
  //Check if Sketch 2
  if(state == 2){if (keyCode == 32) {if(beginDie == 0){beginDie = 1;} else{beginDie = 0;clear();}}
  
  //Check if Sketch 3
  
                 
  }
}

}

void exitButton(){
//exit button
      if(mouseX > 20  && mouseX < 20+50 && mouseY > 20 && mouseY < 20+50){
             
             if(mouseX > 20  && mouseX < 20+50 && mouseY > 20 && mouseY < 20+50 && mousePressed){
                //Button Pressed
                      button(20,20,50,50,100,"x");
                      state = 0;
                      
                //if highlighted
                }else{button(20,20,50,50,150,"x");}  
                
                //Otherwise
                }else{button(20,20,50,50,255,"x");}     

}







//------------------------------------




//--Sketch Related Functions


//Sketch 2

    void ss2Draw(){
    
      
      
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


//--
