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
target_PID = 51966
ports = serial.tools.list_ports.comports()
comport = None

for port in ports:
    print(port)
    print(port.pid)
    if target_name in port.description:
        print(f"{port.device}")
        comport = f"{port.device}"
    if target_PID == port.pid:
        comport = port.device

#Quit program if display not detected
if comport == None:
    print(f"ERROR: No display detected")
    quit()

print(comport)

ser = serial.Serial(comport, 115200)
while True:
    cpu = cpuload()
    gpu = gpuload()
    ram = ramload()
    vram = vramload()

    # Send data to MicroController
    data = f"{cpu},{ram},{gpu},{vram}\n"
    ser.write(data.encode())
    sleep(wait)

