/*
 * The Final Procduino
 *  pitches.h library borrowed from Giuseppe Martini
 *  https://github.com/gmarty2000-ARDUINO/arduino-BUZZER
 */

#include "pitches.h"

int Y = 80;
int N = 0;

int value;

int pinA = 3; // L1
int pinB = 6; // L2
int pinC = 4; // M1
int pinD = 2; // M2
int pinE = 7; // M3
int pinF = 5; // R1
int pinG = 8; // R2
int pinH = 9; //
int play = 0;

int melody[] = {
  NOTE_C5, NOTE_G5, NOTE_C5, NOTE_A5, NOTE_C5, NOTE_B5, NOTE_C5, NOTE_C5
};

//modified example of melody from library
int noteDurations[] = {
  4, 4, 4, 4, 4, 4, 4, 4
};


void setup() {

  
  // put your setup code here, to run once:
      Serial.begin(9600);
      pinMode(pinA, OUTPUT);
      pinMode(pinB, OUTPUT);
      pinMode(pinC, OUTPUT);
      pinMode(pinD, OUTPUT);
      pinMode(pinE, OUTPUT);
      pinMode(pinF, OUTPUT);
      pinMode(pinG, OUTPUT);
      pinMode(pinH, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:

if(Serial.available()){
  value = Serial.read();
  }
delay(50);
check();



}


void check(){
  if(value == 1){
    int rando = random(0,9);
    led(rando);
    delay(200); 
    analogWrite(9,N);
    if (play == 0){
      for (int thisNote = 0; thisNote < 8; thisNote++){
        int noteDuration = 1000 / noteDurations[thisNote];
          tone(10, melody[thisNote], noteDuration);
          int pauseBetweenNotes = noteDuration * 1.30;
          delay(pauseBetweenNotes);
          noTone(10);
          }
    }

}
    if (value == 0){
      digitalWrite(9,Y);
      delay(200);
      digitalWrite(9,N);
      delay(750);
      play = 0;
      }
 }

  
void song(){
  for (int thisNote = 0; thisNote < 8; thisNote++){
      int noteDuration = 1000 / noteDurations[thisNote];
        tone(10, melody[thisNote], noteDuration);
        int pauseBetweenNotes = noteDuration * 1.30;
        delay(pauseBetweenNotes);
        noTone(10);
        }
  }



void led(int num){
  if (num == 1){
    digitalWrite(pinA, N);
    digitalWrite(pinB, N);
    digitalWrite(pinC, N);
    digitalWrite(pinD, N);
    digitalWrite(pinE, N);
    digitalWrite(pinF, Y);
    digitalWrite(pinG, Y);
  } 

  if (num == 2){
    digitalWrite(pinA, N);
    digitalWrite(pinB, Y);
    digitalWrite(pinC, Y);
    digitalWrite(pinD, Y);
    digitalWrite(pinE, Y);
    digitalWrite(pinF, Y);
    digitalWrite(pinG, N);
   }

  if (num == 3){
    digitalWrite(pinA, N);
    digitalWrite(pinB, N);
    digitalWrite(pinC, Y);
    digitalWrite(pinD, Y);
    digitalWrite(pinE, Y);
    digitalWrite(pinF, Y);
    digitalWrite(pinG, Y);
   }
  if (num == 4){
    digitalWrite(pinA, Y);
    digitalWrite(pinB, N);
    digitalWrite(pinC, N);
    digitalWrite(pinD, Y);
    digitalWrite(pinE, N);
    digitalWrite(pinF, Y);
    digitalWrite(pinG, Y);
   }
   if (num == 5){
    digitalWrite(pinA, Y);
    digitalWrite(pinB, N);
    digitalWrite(pinC, Y);
    digitalWrite(pinD, Y);
    digitalWrite(pinE, Y);
    digitalWrite(pinF, N);
    digitalWrite(pinG, Y);
   }
  if (num == 6){
    digitalWrite(pinA, Y);
    digitalWrite(pinB, Y);
    digitalWrite(pinC, Y);
    digitalWrite(pinD, Y);
    digitalWrite(pinE, Y);
    digitalWrite(pinF, N);
    digitalWrite(pinG, Y);
   }
  if (num == 7){
    digitalWrite(pinA, N);
    digitalWrite(pinB, N);
    digitalWrite(pinC, Y);
    digitalWrite(pinD, N);
    digitalWrite(pinE, N);
    digitalWrite(pinF, Y);
    digitalWrite(pinG, Y);
   }
  if (num == 8){
    digitalWrite(pinA, Y);
    digitalWrite(pinB, Y);
    digitalWrite(pinC, Y);
    digitalWrite(pinD, Y);
    digitalWrite(pinE, Y);
    digitalWrite(pinF, Y);
    digitalWrite(pinG, Y);
   }
  if (num == 9){
    digitalWrite(pinA, Y);
    digitalWrite(pinB, N);
    digitalWrite(pinC, Y);
    digitalWrite(pinD, Y);
    digitalWrite(pinE, Y);
    digitalWrite(pinF, Y);
    digitalWrite(pinG, Y);
   }
  if (num == 0){
    digitalWrite(pinA, Y);
    digitalWrite(pinB, Y);
    digitalWrite(pinC, Y);
    digitalWrite(pinD, N);
    digitalWrite(pinE, Y);
    digitalWrite(pinF, Y);
    digitalWrite(pinG, Y);
   }
}
