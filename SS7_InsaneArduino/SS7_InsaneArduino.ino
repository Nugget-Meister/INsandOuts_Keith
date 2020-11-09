int potentialPin = A0;
int resistorVal;

void setup() {
  // put your setup code here, to run once:

pinMode(potentialPin, INPUT_PULLUP);

Serial.begin(9600);

}

void loop() {
  // put your main code here, to run repeatedly:

resistorVal = analogRead(potentialPin);
//Serial.println(resistorVal/15);
Serial.write(resistorVal+1);
delay(500);
}
