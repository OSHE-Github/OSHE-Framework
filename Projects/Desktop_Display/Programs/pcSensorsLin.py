import psutil
import glob
import pyamdgpuinfo
from pathlib import Path

#Get cpu load
def cpuload():
    cpu = int(psutil.cpu_percent(interval=None))
    return cpu

#Get gpu utilization using pyamdgpuinfo
def gpuload():
    pyamdgpuinfo.detect_gpus()
    gpu = pyamdgpuinfo.get_gpu(0)
    gpu.start_utilisation_polling()
    return int(gpu.query_load()*100)

#Get sys memory utilizaiton
def ramload():
    ram = int(psutil.virtual_memory().percent)
    return ram

#Get actual vram utilization using pyamdgpuinfo
def vramload():
    pyamdgpuinfo.detect_gpus()
    gpu = pyamdgpuinfo.get_gpu(0)
    vramInfo = gpu.memory_info
    print(vramInfo)

    total = vramInfo['gtt_size'] + vramInfo['vram_size']
    used = gpu.query_vram_usage() + gpu.query_gtt_usage()
    return int((used / total)*100)

