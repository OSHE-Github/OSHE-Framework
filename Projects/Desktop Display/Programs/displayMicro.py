from sys import platform
import serial

if platform == "linux":
    from pcSensorsLin import cpuload, gpuload, ramload, vramload
elif platform == "win32":
    from pcSensorsWin import cpuload, gpuload, ramload, vramload
    
ser = serial.Serial("COM10", 115200)  # change COM port if needed (Work on auto com port designation later)
while True:
    cpu = cpuload()
    gpu = gpuload()
    ram = ramload()
    vram = vramload()

    # Send data to MicroController
    data = f"{cpu},{ram},{gpu},{vram}\n"
    ser.write(data.encode())