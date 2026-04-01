#!/usr/bin/env python3
import argparse
import time
from serial import Serial
from serial.tools import list_ports

def list_all_ports():
    for p in list_ports.comports():
        print(f"{p.device:24}  {p.description}")

def auto_pick_port():
    # Prefer /dev/cu.* on macOS
    ports = list(list_ports.comports())
    cu_ports = [p for p in ports if p.device.startswith("/dev/cu.")]
    # Heuristic: Microchip/MCP2221 tends to show up in description/manufacturer/hwid
    for p in cu_ports:
        text = f"{p.description} {p.manufacturer} {p.hwid}".lower()
        if "microchip" in text or "mcp2221" in text:
            return p.device
    if len(cu_ports) == 1:
        return cu_ports[0].device
    return None

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--port", help="e.g. /dev/cu.usbserial-XXXX or /dev/cu.usbmodemXXXX")
    ap.add_argument("--baud", type=int, default=115200)
    args = ap.parse_args()

    port = args.port or auto_pick_port()
    if not port:
        print("Couldn't auto-detect the MCP2221A port. Available ports:")
        list_all_ports()
        return

    print(f"Opening {port} @ {args.baud} ...")
    with Serial(port, args.baud, timeout=0.2, write_timeout=1.0) as ser:
        time.sleep(0.2)
        ser.reset_input_buffer()
        ser.reset_output_buffer()

        print("Type 1 or 0 then Enter. Type q to quit.")
        while True:
            s = input("> ").strip()
            if s.lower() in ("q", "quit", "exit"):
                break
            if s not in ("0", "1"):
                print("Please type exactly 0 or 1.")
                continue

            ser.write(s.encode("ascii"))  # send one byte: b'0' or b'1'
            ser.flush()

            # read back any UART response lines briefly
            t_end = time.time() + 0.5
            while time.time() < t_end:
                line = ser.readline()
                if line:
                    print("PICO:", line.decode(errors="replace").rstrip())

if __name__ == "__main__":
    main()
