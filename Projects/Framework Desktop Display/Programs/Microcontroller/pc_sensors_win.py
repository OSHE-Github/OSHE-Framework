import psutil
import serial
import wmi
import ctypes as C
from ctypes import wintypes
import pyopencl as cl

# WMI interface
w = wmi.WMI(namespace="root\\CIMV2")

def cpuload():
    #Return CPU 
    cpu = int(psutil.cpu_percent(interval=None))
    return cpu

def gpuload():
    # CPU + RAM
    cpu = int(psutil.cpu_percent(interval=None))
    ram = int(psutil.virtual_memory().percent)

    # GPU utilization (AMD supported via WMI PerfMon counters)
    gpu = 0
    for gpu_instance in w.Win32_PerfFormattedData_GPUPerformanceCounters_GPUEngine():
        if "engtype_3D" in gpu_instance.Name:  # 3D engine load
            gpu += int(gpu_instance.UtilizationPercentage)

    #Sometimes gpu util fetches >100% util
    if(gpu > 100):
        gpu = 100
        
    return gpu

def ramload():
    #Return CPU 
    mem = int(psutil.virtual_memory().percent)
    return mem

def vramload():
    # 1) Load the AMD ADL DLL (64-bit process -> atiadlxx.dll)
    adl = C.WinDLL("atiadlxx.dll")

    # 2) Define the allocation callback type ADL expects: void* (*ADL_MAIN_MALLOC_CALLBACK)(int)
    ADL_MAIN_MALLOC_CALLBACK = C.CFUNCTYPE(C.c_void_p, C.c_int)

    # Keep allocated buffers alive so GC doesn't free them
    _alloc_pool = []

    def _adl_alloc(size):
        buf = C.create_string_buffer(size)
        _alloc_pool.append(buf)           # prevent GC
        return C.cast(buf, C.c_void_p)    # return void*

    ALLOC_CB = ADL_MAIN_MALLOC_CALLBACK(_adl_alloc)

    # 3) Prototypes
    ADL_CONTEXT_HANDLE = C.c_void_p

    adl.ADL2_Main_Control_Create.restype  = C.c_int
    adl.ADL2_Main_Control_Create.argtypes = [ADL_MAIN_MALLOC_CALLBACK, C.c_int, C.POINTER(ADL_CONTEXT_HANDLE)]

    adl.ADL2_Main_Control_Destroy.restype  = C.c_int
    adl.ADL2_Main_Control_Destroy.argtypes = [ADL_CONTEXT_HANDLE]

    # Dedicated VRAM used (in MB)
    adl.ADL2_Adapter_DedicatedVRAMUsage_Get.restype  = C.c_int
    adl.ADL2_Adapter_DedicatedVRAMUsage_Get.argtypes = [ADL_CONTEXT_HANDLE, C.c_int, C.POINTER(C.c_int)]

    # If you already know your adapter index, set it here. Otherwise enumerate via pyadl or ADL.
    adapter_index = 0

    # 4) Create context (the part that returned -11 before)
    ctx = ADL_CONTEXT_HANDLE()
    rc = adl.ADL2_Main_Control_Create(ALLOC_CB, 1, C.byref(ctx))

    if rc != 0:
        raise RuntimeError(f"ADL init failed rc={rc}")

    try:
        used_mb = C.c_int()
        rc = adl.ADL2_Adapter_DedicatedVRAMUsage_Get(ctx, adapter_index, C.byref(used_mb))
        if rc != 0:
            raise RuntimeError(f"VRAMUsage_Get failed rc={rc}")

        for platform in cl.get_platforms():
            for dev in platform.get_devices(device_type=cl.device_type.GPU):
                max_mb = int(dev.global_mem_size/1e6)

        pct = int((used_mb.value / max_mb) * 100)
    finally:
        adl.ADL2_Main_Control_Destroy(ctx)
    return pct
    

