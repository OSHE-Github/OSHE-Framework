# How to blink a LED connected to GP2
import EasyMCP2221
from time import sleep
from fast_i2c_lcd import FastI2CLCD, M2

# Connect to the device
mcp = EasyMCP2221.Device()

# Set GP2 for General Purpose Input Output, as an Output.
mcp.set_pin_function(gp2 = "GPIO_OUT")

#Scan for I2C Devices on the bus
devices = 0
for addr in range(0, 0x80):
    try:
        mcp.I2C_read(addr)
        data = mcp.I2C_read(
            addr = addr,
            size = 1)
        #Check if the byte is invalid
        if(data != b'\x07'):
            devices = devices + 1
            print("Found device at addr: 0x%02X" % addr)

    except EasyMCP2221.exceptions.NotAckError:
        pass
    
# Create blank array with length equal to the number of devices on I2C Bus
addrs = [0] * devices
devices = 0
    
for addr in range(0, 0x80):
    try:
        mcp.I2C_read(addr)
        data = mcp.I2C_read(
            addr = addr,
            size = 1)
        print(data)
        
        #Check if the byte is invalid
        if(data == b'T' or data == b'p'):
            addrs[devices] = addr
            devices = devices + 1
        

    except EasyMCP2221.exceptions.NotAckError:
        pass

#Setup LCD
#lcd = FastI2CLCD(mcp, 0x27, M2, cols=16, rows=2, backlight=True)
#lcd.set_backlight(True)

#Query all devices for debug information
while True:
    
    mcp.GPIO_write(gp2 = False)
    sleep(0.25)
    
    for i in range(0, devices):
        slaveaddr = addrs[i]
        data = mcp.I2C_read(addr = slaveaddr,size = 4)
        print("Recieved: -" + data.decode('utf-8') + "- from: 0x%02X" % (slaveaddr))
        print(data)
        #lcd.write_line_fast("From: 0x%02X" % (slaveaddr) + ": " + data.decode('utf-8'), 0)
        #lcd.write_line_fast("Raw: " + str(data), 1)
        sleep(1)
            

    
    
    
    
