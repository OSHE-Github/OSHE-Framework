import psutil
import glob
from pathlib import Path

def cpuload():
    #Return CPU 
    cpu = int(psutil.cpu_percent(interval=None))
    return cpu

def gpuload():
    candidates = sorted(glob.glob("/sys/class/drm/card[0-9]*/device/gpu_busy_percent"))
    for path in candidates:
        p = Path(path)
        try:
            txt = p.read_text().strip()
            # Some kernels expose a trailing newline only; ensure non-empty
            if txt:
                gpu = int(txt)
                if 0 <= gpu <= 100:
                    return gpu
        except (ValueError, OSError):
            # Try next candidate
            continue
    raise RuntimeError("Could not read AMD GPU utilization from sysfs (is the amdgpu driver in use?).")

def ramload():
    #Return CPU 
    ram = int(psutil.virtual_memory().percent)
    return ram

def vramload():
    for card_path in sorted(glob.glob("/sys/class/drm/card[0-9]*/device")):
        used_path = Path(card_path) / "mem_info_vram_used"
        total_path = Path(card_path) / "mem_info_vram_total"
        try:
            used = int(used_path.read_text().strip())
            total = int(total_path.read_text().strip())
            if total > 0:
                return int((used / total) * 100)
        except (ValueError, OSError, FileNotFoundError):
            continue

    raise RuntimeError("Could not read AMD VRAM utilization (is amdgpu driver loaded?).")
    

