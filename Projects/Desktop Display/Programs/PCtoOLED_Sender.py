from sys import platform
import serial
import serial.tools.list_ports
import time

if platform == "linux":
    from pcSensorsLin import cpuload, gpuload, ramload, vramload
elif platform == "win32":
    from pcSensorsWin import cpuload, gpuload, ramload, vramload


def find_board():
    for port in serial.tools.list_ports.comports():
        if port.vid == 11914 and port.pid == 4272:
            return port.device
    return None


port = find_board()

if port is None:
    print("RP board not found.")
    exit()

print("Connecting to:", port)

ser = serial.Serial(port, 115200)
time.sleep(2)  # allow reset

while True:
    cpu = cpuload()
    gpu = gpuload()
    ram = ramload()
    vram = vramload()

    data = f"{cpu},{ram},{gpu},{vram}\n"
    ser.write(data.encode())
    time.sleep(1)
