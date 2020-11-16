int ledPinA = 5;
int ledPinB = 6;
int ledPinC = 9;
int ledPinD = 10;
int ledPinE = 11;
 int brightness = 100;
int value;

void setup() {
  // put your setup code here, to run once:

Serial.begin(9600);


pinMode(ledPinA, OUTPUT);
pinMode(ledPinB, OUTPUT);
pinMode(ledPinC, OUTPUT);
pinMode(ledPinD, OUTPUT);
pinMode(ledPinE, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
 debugTest(false);
 
 if(Serial.available()){
  value = Serial.read();
  }
  stateLED(value);

}

void debugTest(bool y){
  if(y){
    analogWrite(ledPinA, brightness);
    analogWrite(ledPinB, brightness);
    analogWrite(ledPinC, brightness);
    analogWrite(ledPinD, brightness);
    analogWrite(ledPinE, brightness);
  }
}

void stateLED(int x){
  
  if (x == 0){
    analogWrite(ledPinA, brightness);
    analogWrite(ledPinB, brightness);
    analogWrite(ledPinC, brightness);
    analogWrite(ledPinD, brightness);
    analogWrite(ledPinE, brightness);
    }
  if (x == 1){
    analogWrite(ledPinA, brightness);
    analogWrite(ledPinB, 0);
    analogWrite(ledPinC, brightness);
    analogWrite(ledPinD, 0);
    analogWrite(ledPinE, 0);
    }
  if (x == 2){
    analogWrite(ledPinA, brightness);
    analogWrite(ledPinB, 0);
    analogWrite(ledPinC, 0);
    analogWrite(ledPinD, brightness);
    analogWrite(ledPinE, 0);
    }
  if (x == 3){
    analogWrite(ledPinA, brightness);
    analogWrite(ledPinB, 0);
    analogWrite(ledPinC, 0);
    analogWrite(ledPinD, 0);
    analogWrite(ledPinE, brightness);
    };
  
  
}
