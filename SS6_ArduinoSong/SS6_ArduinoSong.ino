int buttonPinA = 3;
int ledPinA = 5;
int ledPinB = 6;
int ledPinC = 9;
int ledPinD = 10;
int ledPinE = 11;

int brightness = 100;

int buttonPress;

int patternA[128] = {0, 0,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  1,  1,  0,  0,  0,  0,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  0,  1,  1,  1,  0,  1,  0,  1,  0,  0,  1,  1,  0,  1,  0,  1,  1,  0,  0,  1,  0,  0,  1,  0,  0,  1,  0,  0,  1,  0,  1,  0,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1};
int patternB[128] = {0, 1,  0,  1,  0,  1,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  1,  0,  1,  0,  1,  0,  0,  0,  0,  0,  1,  0,  1,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  1,  1,  0,  0,  0,  0,  0,  0,  1,  0,  0,  1,  0,  0,  0,  1,  0,  1,  0,  1,  0,  0,  0,  1,  1,  1,  0,  1,  0,  1,  0,  0,  1,  1,  0,  1,  0,  1,  0,  0,  1,  0,  1,  0,  1,  0,  1,  1,  0,  0,  1,  0,  1,  0,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  0,  0,  1,  0,  0,  1,  0,  0,  1,  0,  0,  1,  0,  1,  0};
int patternC[128] = {0, 0,  0,  0,  1,  0,  0,  1,  0,  0,  1,  1,  0,  0,  1,  0,  0,  0,  0,  0,  1,  0,  0,  1,  0,  0,  1,  1,  0,  0,  1,  0,  0,  0,  1,  0,  0,  1,  0,  0,  0,  1,  0,  1,  0,  1,  0,  0,  0,  0,  0,  0,  1,  1,  0,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  0,  1,  0,  1,  0,  1,  0,  1,  1,  0,  0,  1,  0,  1,  0,  0,  1,  0,  0,  1,  0,  0,  1,  0,  0,  1,  0,  0,  1,  0,  1,  0,  1,  0,  0,  1,  0,  0,  1,  0,  0,  1,  0,  0,  1,  0,  1,  0,  1,  0,  0,  1,  0,  0,  1,  0,  0,  1,  0,  0,  1,  0,  1};
int patternD[128] = {1, 0,  0,  0,  0,  0,  1,  0,  1,  1,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  1,  0,  1,  1,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0,  1,  1,  0,  1,  0,  0,  1,  0,  1,  0,  0,  1,  1,  1,  1,  1,  1,  1,  1,  1,  0,  0,  1,  0,  1,  0,  0,  1,  1,  0,  0,  1,  0,  0,  1,  0,  0,  1,  0,  0,  1,  0,  1,  0,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  0,  0,  1,  1,  0,  1,  0,  1,  1,  1,  0,  0,  1,  0,  1,  1,  0,  0,  1,  1,  0,  1,  0,  1,  1,  1,  0,  0,  1,  0,  1,  1};
int patternE[128] = {1, 1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  0,  1,  0,  0,  1,  0,  1,  0,  0,  1,  0,  0,  1,  0,  1,  0,  0,  1,  0,  0,  1,  0,  1,  0,  0,  1,  0,  0,  1,  0,  1,  0,  0,  1,  0,  0,  1,  0,  0,  1,  0,  0,  1,  0,  0,  1,  0,  1,  1,  0,  0,  1,  0,  0,  1,  0,  0,  1,  0,  0,  1,  0,  1,  0,  0,  1,  1,  0,  1,  0,  1,  1,  0,  0,  1,  1,  0,  1,  1,  0,  0,  1,  1,  0,  1,  0,  1,  1,  0,  0,  1,  1,  0,  1,  1,  0 };

int tempo = 170;
int beatDelay = (60000/tempo)/2;



void setup() {
  // put your setup code here, to run once:

Serial.begin(9600);
pinMode(buttonPinA, INPUT_PULLUP);


pinMode(ledPinA, OUTPUT);
pinMode(ledPinB, OUTPUT);
pinMode(ledPinC, OUTPUT);
pinMode(ledPinD, OUTPUT);
pinMode(ledPinE, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:

buttonPress = digitalRead(buttonPinA);
debugTest(false);
  if(buttonPress){
    song();
    delay(2000);
    reset();
    }
}




void debugTest(bool y){
  if(y){
    Serial.println(buttonPress);
    analogWrite(ledPinA, brightness);
    analogWrite(ledPinB, brightness);
    analogWrite(ledPinC, brightness);
    analogWrite(ledPinD, brightness);
    analogWrite(ledPinE, brightness);
  }
}


void song(){
  for(int i = 0; i < 128; i++){
    debugSong(true, i);
    if(patternA[i] == 1){analogWrite(ledPinA,brightness);}else{analogWrite(ledPinA,0);}
    if(patternB[i] == 1){analogWrite(ledPinB,brightness);}else{analogWrite(ledPinB,0);}
    if(patternC[i] == 1){analogWrite(ledPinC,brightness);}else{analogWrite(ledPinC,0);}
    if(patternD[i] == 1){analogWrite(ledPinD,brightness);}else{analogWrite(ledPinD,0);}
    if(patternE[i] == 1){analogWrite(ledPinE,brightness);}else{analogWrite(ledPinE,0);}
  



    
    delay(beatDelay);
    }
  }

void reset(){
    
    for(int i = 0; i < 3; i++){
    analogWrite(ledPinA, brightness);
    analogWrite(ledPinB, brightness);
    analogWrite(ledPinC, brightness);
    analogWrite(ledPinD, brightness);
    analogWrite(ledPinE, brightness);
    delay(300);
    analogWrite(ledPinA, 0);
    analogWrite(ledPinB, 0);
    analogWrite(ledPinC, 0);
    analogWrite(ledPinD, 0);
    analogWrite(ledPinE, 0);
    delay(300);
    Serial.println(i);
    }
  }

void debugSong(bool y, int i){
  if(y){
    Serial.print(i);
    Serial.print(": ");
    Serial.print(patternA[i]);
    Serial.println();
    }
  }
