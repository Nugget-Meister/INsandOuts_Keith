import processing.serial.*;

Serial myPort;


int minute10 = 0;
int minute1 = 0;
int second10 = 0;
int second1 = 1;
boolean tick = false;
int timeup = 0;
int select = 1;

void setup()
{
  size(1000,1000);
  background(0);
  noStroke();
  
  printArray(Serial.list());
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
  
}


void draw(){
  
  
  
  clear();
  if(timeup == 0){background(0);}
  if(timeup == 1){background(250);}
  if(tick){
     a = 200;
     b = 200;
     c = 200;
     d = 200;
      count();
      delay(1000);
    }
    
    
    timer();
    
   
    
}

int a = 200;
int b = 200;
int c = 200;
int d = 200;

void timer(){
  textAlign(CENTER);
  
  textSize(70);
  fill(a,200,180);
  text(minute10, width/2 -75,height/2);
  fill(b,200,180);
  text(minute1, width/2 -25,height/2);
  fill(200,200,180);
  text(":", width/2 +25,height/2);
  fill(c,200,180);
  text(second10, width/2 +75,height/2);
  fill(d,200,180);
  text(second1, width/2 +125,height/2);
  
  if(!tick){fill(150,150,150);textSize(28);text("Press space to start timer",width/2,600); text("Up/down to increment timer, left/right to choose increment size",width/2, 700);}
  
}

void keyPressed(){
if(tick){}else
  if(keyCode == 32){tick = true; timeup = 0;}
  if(keyCode == 38){
    if(select == 1){second1++;}
    if(select == 2){second10++;}
    if(select == 3){minute1++;}
    if(select == 4){minute10++;}
    if(second1>9){second1=9;}
    if(second10>5){second10=5;}
    if(minute1>9){minute1=9;}
    if(minute10>5){minute10=5;}       
  }
  if(keyCode == 40){
    if(select == 1){second1--;}
    if(select == 2){second10--;}
    if(select == 3){minute1--;}
    if(select == 4){minute10--;}
    if(second1<0){second1=0;}
    if(second10<0){second10=0;}
    if(minute1<0){minute1=0;}
    if(minute10<0){minute10=0;}
  }
  if(keyCode == 39){
    select--;
      if(select < 1){select = 1;}
  }
  if(keyCode == 37){
    select++;
      if(select > 4){select = 4;}
  }
  if(select == 1){a=200;b=200;c=200;d=255;}
  if(select == 2){a=200;b=200;c=255;d=200;}
  if(select == 3){a=200;b=255;c=200;d=200;}
  if(select == 4){a=255;b=200;c=200;d=200;}
  

  
}

void count(){
    
  if(tick){    
    if(second1 > 0) { //if seconds is not 0
       second1--;  //tick one second
        }else if (second1 <= 0){ //if second  is 0 
              if(second10 > 0){
                 second10--;     //remove one from upper
                 second1 = 9;       //then can replenish seconds
              }else 
              if(second10 <= 0){   //if second10 is depleted
                 if(minute1 > 0){        // if there are minutes left
                      minute1--;         //deplete from minute
                      second10 = 5;      //replenish from minute
                      second1 = 9;       // and replenish seconds
                  } else
                 if(minute1 <= 0) {      //if no minutes
                   if(minute10 > 0){   // if 10 minutes
                       minute10--;   //deplete from 10minute
                       minute1 = 9;  //replenish 9
                       second10 = 5; //replenish minute 
                       second1 = 9;  //replenish second   
                     }else{tick = false; timeup = 1;}              
                 }               
                } 
              } myPort.write(timeup);
            }
            
    
}  

  
  
