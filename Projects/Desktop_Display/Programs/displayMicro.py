from sys import platform
import serial
from time import sleep
import serial.tools.list_ports

if platform == "linux":
    from pcSensorsLin import cpuload, gpuload, ramload, vramload
    wait = 0.5
elif platform == "win32":
    from pcSensorsWin import cpuload, gpuload, ramload, vramload
    wait = 0
    
#Port autodetection yay!
target_name = "OSHE Framework Desktop Display"
ports = serial.tools.list_ports.comports()
port = None

for port in ports:
    print(f"{port.device}")
    port = f"{port.device}"
    print(port)

if port == None:
    print(f"ERROR: No display detected")

ser = serial.Serial(port, 115200)
while True:
    cpu = cpuload()
    gpu = gpuload()
    ram = ramload()
    vram = vramload()

    # Send data to MicroController
    data = f"{cpu},{ram},{gpu},{vram}\n"
    ser.write(data.encode())
    sleep(wait)

