#include <Wire.h>
#include <LiquidCrystal_I2C.h>

// LCD I2C address is 0x27
LiquidCrystal_I2C lcd(0x27, 16, 2);

void setup() {
  Serial.begin(115200);   // Serial for receiving data from Windows
  lcd.init();             // Initialize LCD
  lcd.backlight();        // Turn on backlight
  lcd.setCursor(0,0);
  lcd.print("Waiting for data");
}

void loop() {
  if (Serial.available()) {
    String line = Serial.readStringUntil('\n');
    int cpu, ram, gpu, vram;
    // Expecting format: CPU,RAM,GPU
    if (sscanf(line.c_str(), "%d,%d,%d,%d", &cpu, &ram, &gpu, &vram) == 4) {
      // Update first line
      lcd.setCursor(0, 0);
      lcd.print("CPU:");
      lcd.print(cpu);
      if(cpu < 100){
        lcd.print("% RAM:");
      }else{
        lcd.print("%RAM:");
      }
      lcd.print(ram);
      lcd.print("%   ");  // extra spaces overwrite leftovers

      // Update second line
      lcd.setCursor(0, 1);
      lcd.print("GPU:");
      lcd.print(gpu);
      if(gpu < 100){
        lcd.print("% VRA:");
      }else{
        lcd.print("%VRA:");
      }
      lcd.print(vram);
      lcd.print("%   ");  // extra spaces overwrite leftovers
    }
  }
}
