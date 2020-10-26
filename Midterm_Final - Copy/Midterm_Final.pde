
//Variables
int state = 0;

//Sketch Variables




void setup(){
  size(1000, 1000);
  background(0);
  noStroke();
  imageMode(CENTER);

  
}

void draw(){
  
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
                  button((width/2)-100,200,200,50,100);
                  
            //if highlighted
            }else{button((width/2)-100,200,200,50,150);}  
            
            //Otherwise
            }else{button((width/2)-100,200,200,50,255);}
    
//Button 2
    if(mouseX > (width/2)-100  && mouseX < ((width/2)-100)+200 && mouseY > 400 && mouseY < 400+50 ){
         
         if(mouseX > ((width/2)-100) && mouseX < ((width/2)-100)+200 && mouseY > 400 && mouseY < 400+50 && mousePressed){
            //Button Pressed
                  button((width/2)-100,400,200,50,100);
                  
            //if highlighted
            }else{button((width/2)-100,400,200,50,150);}  
            
            //Otherwise
            }else{button((width/2)-100,400,200,50,255);}
          
           
}


// if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed )

void button(int x,int y,int w,int h,int fill){
     fill(fill);
     rect(x,y,w,h);     
     }
                 



void sketchA(){
 
}
