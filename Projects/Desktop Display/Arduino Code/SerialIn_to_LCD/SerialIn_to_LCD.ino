#include <LiquidCrystal_I2C.h>

LiquidCrystal_I2C lcd(0x27,16,2);  // set the LCD address to 0x27 for a 16 chars and 2 line display
LiquidCrystal_I2C lcd2(0x26,20,4);  // set the LCD address to 0x26 for a 16 chars and 2 line display
String data = "";
String out = "Err: ";
int seek = 0;
int found = 0;

void setup() {
  Serial.begin(38400);

  //Initialize LCD1
  lcd.init();
  lcd.clear();         
  lcd.backlight();

  //Initialize LCD2
  lcd2.init();
  lcd2.clear();         
  lcd2.backlight();
}

void loop() {
  if (Serial.available() > 0) {
    seek = 0;
    found = 0;

    // read the incoming data:
    data = Serial.readString();

    if(false){
      if(data.charAt(0) == 'M'){
        data.remove(0,1);
        lcd.setCursor(0,0);   //Set cursor to character 0 on line 0
        lcd.print("Max: " + String(data));
      }
      if(data.charAt(0) == 'U'){
        data.remove(0,1);
        lcd.setCursor(0,1);   //Set cursor to character 0 on line 1
        lcd.print("Used: " + String(data));
      }
    }else{
      //Run until the end char is reached
      while(data.charAt(seek) != 'E'){
        //Run when the break char is found
        if(data.charAt(seek) == 'P'){

          //If block for specific messages (sorry)
          if(found == 0){
            out = " Max: ";
          }else if(found == 1){
            out = "Used: ";
          }else if(found == 2){
            out = "CPU Temp: ";
          }else if(found == 3){
            out = "CPU Util: ";
          }else if(found == 4){
            out = "GPU Temp: ";
          }else if(found == 5){
            out = "GPU Util: ";
          }else{
            out = "Err: ";
          }

          if(found < 2){
            //Print out the extracted data
            lcd.setCursor(0,found);
            lcd.print(out+data.substring(0,seek));
            data.remove(0,seek+1);
          }else if(found <6){
            //Print out the extracted data
            lcd2.setCursor(0,found-2);
            lcd2.print(out+data.substring(0,seek));
            data.remove(0,seek+1);
          }

          //Reset seek and increment found
          seek = 0;
          found++;
        }else{
          seek++;
        }
      }

    }

  }
}