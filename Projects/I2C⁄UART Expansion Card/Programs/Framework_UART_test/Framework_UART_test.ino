int led = 26;

int val = 0;

void setup() {
  Serial1.setTX(0);
  Serial1.setRX(1);
  Serial1.begin(115200);
  pinMode(led, OUTPUT);
}

void loop() {
  if (Serial1.available() > 0) {
    val = Serial1.read();
    delay(5);

    if (val == '1') {
      digitalWrite(led, HIGH);
      Serial1.println("LED is ON");
    }

    if (val == '0') {
      digitalWrite(led, LOW);
      Serial1.println("LED is OFF");
    }
  }
}
