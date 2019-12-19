int in1 = 7;

void setup() {
  pinMode(in1, OUTPUT);
  digitalWrite(in1, HIGH);
}

void loop() {
  if (Serial.available() > 0) {
     char data = Serial.read();

     digitalWrite(in1, LOW);
     delay(1000);
     digitalWrite(in1, HIGH);
  }
}
