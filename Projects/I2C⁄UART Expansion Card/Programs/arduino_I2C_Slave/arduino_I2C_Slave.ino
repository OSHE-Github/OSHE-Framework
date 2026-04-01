#include <Wire.h>

#define SLAVE_ADDR 0x42  // I2C address of this device

void setup() {
  // Initialize I2C as a slave
  Wire.begin(SLAVE_ADDR);

  // Register callbacks (optional, just so master has something to read/write)
  Wire.onReceive(receiveEvent);
  Wire.onRequest(requestEvent);

  // Debug
  Serial.begin(9600);
  Serial.println("I2C Slave ready at address 0x24");
}

void loop() {
  // Nothing needed here, everything handled by interrupts
}

// Function to handle data received
void receiveEvent(int howMany) {
  while (Wire.available()) {
    char c = Wire.read();  // Read the received byte
    Serial.print("Received: ");
    Serial.println(c);
  }
}

// Function to handle data request
void requestEvent() {
  Wire.write("KO");  // Send back a sanity message
}
