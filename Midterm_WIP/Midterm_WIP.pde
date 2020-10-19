
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
    
//--Sketch 2 [Placeholder]

//--Sketch





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
}




// Custom setup

void menu()
{
    
//Button 1
        // button((width/2)-100,200,200,50,255);
    if(mouseX > (width/2)-100  && mouseX < ((width/2)-100)+200 && mouseY > 200 && mouseY < 200+50 ){
         
         if(mouseX > ((width/2)-100) && mouseX < ((width/2)-100)+200 && mouseY > 200 && mouseY < 200+50 && mousePressed){
            //Button Pressed
                  button((width/2)-100,200,200,50,100,"1");
                  state = 1;
                  
            //if highlighted
            }else{button((width/2)-100,200,200,50,150,"1");}  
            
            //Otherwise
            }else{button((width/2)-100,200,200,50,255,"1");}
    
//Button 2
    if(mouseX > (width/2)-100  && mouseX < ((width/2)-100)+200 && mouseY > 400 && mouseY < 400+50 ){
         
         if(mouseX > ((width/2)-100) && mouseX < ((width/2)-100)+200 && mouseY > 400 && mouseY < 400+50 && mousePressed){
            //Button Pressed
                  button((width/2)-100,400,200,50,100,"2");
                  
            //if highlighted
            }else{button((width/2)-100,400,200,50,150,"2");}  
            
            //Otherwise
            }else{button((width/2)-100,400,200,50,255,"2");}
          
           
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

//------------------------------------------

void SketchB(){
//--Sketch 2


}

//------------------------------------------

void SketchC(){}



// Used for Various Sketches
void keyPressed(){
  
  //Check if Sketch 1
  if(state == 1){if (keyCode == 32){colorBack = random(100)+ 150;} else {colorBack = 255;}}
  
  
  //Placeholder for Sketch 2
  
  //Placeholder for Sketch 3
}
