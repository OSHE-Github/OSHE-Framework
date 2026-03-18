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
target_name = "OSHE Framework Desktop Compatible Display"
ports = serial.tools.list_ports.comports()
port = ""

for port in ports:
    if target_name in port.description:
        port = {port.device}

if port == "":
    print(f"ERROR: No display detected")

ser = serial.Serial("/dev/ttyACM0", 115200)  # change COM port if needed (Work on auto com port designation later)
while True:
    cpu = cpuload()
    gpu = gpuload()
    ram = ramload()
    vram = vramload()

    # Send data to MicroController
    data = f"{cpu},{ram},{gpu},{vram}\n"
    ser.write(data.encode())
    sleep(wait)

