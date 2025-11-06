# fast_i2c_lcd.py
from time import sleep
from EasyMCP2221 import Device

# ----------------- MAPPING CLASSES -----------------
class Map:
    def __init__(self, d4,d5,d6,d7, rs,rw,e, bl_pin, bl_active_high):
        self.p_d4,self.p_d5,self.p_d6,self.p_d7 = d4,d5,d6,d7
        self.p_rs,self.p_rw,self.p_e,self.p_bl = rs,rw,e,bl_pin
        self.bl_active_high = bl_active_high

# your working mapping
M2 = Map(d4=4, d5=5, d6=6, d7=7,
         rs=0, rw=1, e=2,
         bl_pin=3, bl_active_high=True)

# ----------------- DRIVER CLASS -----------------
def _bit(p): return 1 << p

class FastI2CLCD:
    """Fast LCD driver for MCP2221 + PCF8574 backpacks."""
    def __init__(self, dev: Device, addr: int, mapping: Map, cols=16, rows=2, backlight=True):
        self.dev, self.addr, self.m, self.cols, self.rows = dev, addr, mapping, cols, rows
        self.bl_on = backlight
        self._init4bit()

    def _bl_mask(self):
        if self.m.bl_active_high:
            return _bit(self.m.p_bl) if self.bl_on else 0
        else:
            return 0 if self.bl_on else _bit(self.m.p_bl)

    def _pack_nybble(self, nyb, rs=False):
        b = 0
        if nyb & 0x10: b |= _bit(self.m.p_d4)
        if nyb & 0x20: b |= _bit(self.m.p_d5)
        if nyb & 0x40: b |= _bit(self.m.p_d6)
        if nyb & 0x80: b |= _bit(self.m.p_d7)
        if rs: b |= _bit(self.m.p_rs)
        b |= self._bl_mask()
        return b

    def _pulse4(self, nyb, rs):
        base = self._pack_nybble(nyb, rs)
        en = _bit(self.m.p_e)
        return bytes([base | en, base])

    def _send_byte(self, val, rs):
        hi, lo = (val & 0xF0), (val << 4) & 0xF0
        return self._pulse4(hi, rs) + self._pulse4(lo, rs)

    def _w(self, data: bytes):
        self.dev.I2C_write(self.addr, data)

    def _cmd(self, c):
        self._w(self._send_byte(c, rs=False))
        if c in (0x01, 0x02): sleep(0.002)

    def _init4bit(self):
        sleep(0.05)
        seq = b""
        for _ in range(3):
            seq += self._pulse4(0x30, rs=False); sleep(0.0045)
        seq += self._pulse4(0x20, rs=False)
        self._w(seq); sleep(0.0045)
        self._cmd(0x28); self._cmd(0x0C); self._cmd(0x01); self._cmd(0x06)

    # --------------- Public methods ---------------
    def clear(self): self._cmd(0x01)
    def set_backlight(self, on: bool):
        self.bl_on = on
        self._w(bytes([self._pack_nybble(0x00, rs=False)]))
    def set_cursor(self, col, row):
        row = max(0, min(row, self.rows-1))
        base = [0x00, 0x40, 0x14, 0x54][row]
        self._cmd(0x80 | (base + col))
    def write_line_fast(self, text, row):
        text = (text or "").ljust(self.cols)[:self.cols]
        pkt = bytearray()
        pkt += self._send_byte(0x80 | [0x00,0x40,0x14,0x54][row], rs=False)
        for ch in text: pkt += self._send_byte(ord(ch), rs=True)
        self._w(pkt)
    def write_at(self, col, row, text):
        if not text: return
        text = text[:self.cols - col]
        pkt = bytearray()
        pkt += self._send_byte(0x80 | [0x00,0x40,0x14,0x54][row] + col, rs=False)
        for ch in text: pkt += self._send_byte(ord(ch), rs=True)
        self._w(pkt)
