
int ledState = LOW;
int ledState2 = LOW;
int sensorPin = A0;    // select the input pin for the potentiometer
int sensorPin2 = A1;
int ledPin = 13;      // select the pin for the LED
int ledPin2 = 10;
int sensorValue = 0;  // variable to store the value coming from the sensor
int sensorValue2 = 0;
unsigned long prevTime = 0;
unsigned long interval = 1000;
unsigned long prevTime2 = 0;
unsigned long interval2 = 1000;

void setup() {
  // declare the ledPin as an OUTPUT:
  pinMode(ledPin, OUTPUT);
  pinMode(ledPin2, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  unsigned long curTime = millis();
  sensorValue = analogRead(sensorPin);
  if (curTime - prevTime >= sensorValue) {
    prevTime = curTime;

    if (ledState == LOW)
      ledState = HIGH;
    else
      ledState = LOW;
    digitalWrite(ledPin, ledState);
  }
  unsigned long curTime2 = millis();
  sensorValue2 = analogRead(sensorPin2);
  if (curTime2 - prevTime2 >= sensorValue2) {
    prevTime2 = curTime2;

    if (ledState2 == LOW)
      ledState2 = HIGH;
    else
      ledState2 = LOW;
    digitalWrite(ledPin2, ledState2);
  }
}
