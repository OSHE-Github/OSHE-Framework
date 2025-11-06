# main.py
from EasyMCP2221 import Device
from fast_i2c_lcd import FastI2CLCD, M2
from time import sleep

from sys import platform

if platform == "linux":
    from pcSensorsLin import cpuload, gpuload, ramload, vramload
    wait = 1
elif platform == "win32":
    from pcSensorsWin import cpuload, gpuload, ramload, vramload
    wait = 0

# Create MCP2221 and LCD
dev = Device()
for setter in (lambda: dev.I2C_speed(400000), lambda: setattr(dev, "I2C_speed", 400000)):
    try: setter(); break
    except Exception: pass

# Find LCD address (optional)
addr = None
for a in (0x27, 0x3F, 0x20, 0x38):
    try: dev.I2C_write(a, b"\x00"); addr = a; break
    except Exception: pass
if addr is None:
    raise RuntimeError("No LCD found!")

lcd = FastI2CLCD(dev, addr, M2, cols=16, rows=2, backlight=True)
lcd.set_backlight(True)
# Use the clean API
while True:
    cpu = cpuload()
    ram = ramload()
    
    if(cpu < 10):
        lcd.write_line_fast("CPU:" + str(cpu) + "%  GPU:" + str(gpuload()) + "%", 0)
    elif(cpu < 100):
        lcd.write_line_fast("CPU:" + str(cpu) + "% GPU:" + str(gpuload()) + "%", 0)
    else:
        lcd.write_line_fast("CPU:" + str(cpu) + "%GPU:" + str(gpuload()) + "%", 0)
    
    if(ram < 10):
        lcd.write_line_fast("RAM:" + str(ram) + "%  VRA:" + str(vramload()) + "%", 1)
    elif(ram < 100):
        lcd.write_line_fast("RAM:" + str(ram) + "% VRA:" + str(vramload()) + "%", 1)
    else:
        lcd.write_line_fast("RAM:" + str(ram) + "%VRA:" + str(vramload()) + "%", 1)

    sleep(wait)
