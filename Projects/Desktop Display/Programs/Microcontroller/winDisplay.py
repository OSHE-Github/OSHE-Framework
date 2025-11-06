import psutil
import serial
import time
from pc_sensors_win import cpuload, gpuload, ramload, vramload

def display():
    ser = serial.Serial("COM14", 115200)  # change COM port if needed (Work on auto com port designation later)
    while True:
        cpu = cpuload()
        gpu = gpuload()
        ram = ramload()
        vram = vramload()

        # Send data to MicroController
        data = f"{cpu},{ram},{gpu},{vram}\n"
        ser.write(data.encode())


    