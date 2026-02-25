#include <Arduino.h>
#include <U8g2lib.h>

#ifdef U8X8_HAVE_HW_SPI
#include <SPI.h>
#endif

// Your existing constructor
U8G2_SSD1309_128X64_NONAME0_F_4W_HW_SPI u8g2(U8G2_R0, 5, 7, 8);

int cpu = 0, ram = 0, gpu = 0, vram = 0;

void setup() {
  Serial.begin(115200);

  SPI.setTX(3);
  SPI.setSCK(6);
  SPI.setCS(5);

  u8g2.begin();
  u8g2.setFont(u8g2_font_6x10_tf);
  u8g2.setFontPosTop();

  drawWaiting();
}

void drawWaiting() {
  u8g2.clearBuffer();
  u8g2.drawStr(0, 0, "Waiting for data");
  u8g2.sendBuffer();
}

// Draw a horizontal percentage bar
void drawBar(int x, int y, int percent) {
  const int maxWidth = 60;       // total bar width
  const int height = 8;

  if (percent < 0) percent = 0;
  if (percent > 100) percent = 100;

  int fillWidth = (percent * maxWidth) / 100;

  u8g2.drawFrame(x, y, maxWidth, height);          // outline
  if (fillWidth > 2)
    u8g2.drawBox(x + 1, y + 1, fillWidth - 2, height - 2); // filled part
}

void drawStats() {
  u8g2.clearBuffer();

  // Line spacing = 16 pixels (fits 4 rows on 64px screen)

  // CPU
  u8g2.setCursor(0, 0);
  u8g2.print("CPU ");
  u8g2.print(cpu);
  u8g2.print("%");
  drawBar(55, 4, cpu);

  // RAM
  u8g2.setCursor(0, 16);
  u8g2.print("RAM ");
  u8g2.print(ram);
  u8g2.print("%");
  drawBar(55, 20, ram);

  // GPU
  u8g2.setCursor(0, 32);
  u8g2.print("GPU ");
  u8g2.print(gpu);
  u8g2.print("%");
  drawBar(55, 36, gpu);

  // VRAM
  u8g2.setCursor(0, 48);
  u8g2.print("VRAM ");
  u8g2.print(vram);
  u8g2.print("%");
  drawBar(55, 52, vram);

  u8g2.sendBuffer();
}

void loop() {
  if (Serial.available()) {
    String line = Serial.readStringUntil('\n');

    if (sscanf(line.c_str(), "%d,%d,%d,%d", &cpu, &ram, &gpu, &vram) == 4) {
      drawStats();
    }
  }
}
