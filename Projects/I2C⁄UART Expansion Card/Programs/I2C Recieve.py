import EasyMCP2221
from time import sleep

# Connect to the device
mcp = EasyMCP2221.Device()

# Reclaim GP2 for General Purpose Input Output, as an Output.
mcp.set_pin_function(gp2 = "GPIO_OUT")

print("Searching...")

for addr in range(0, 0x80):
    try:
        mcp.I2C_read(addr)
        print("I2C slave found at address 0x%02X" % (addr))
        slaveaddr = addr

    except EasyMCP2221.exceptions.NotAckError:
        pass

while True:
    mcp.GPIO_write(gp2 = True)
    sleep(0.1)
    mcp.GPIO_write(gp2 = False)
    sleep(0.1)
    data = mcp.I2C_read(
        addr = slaveaddr,
        size = 100)
    
    print("Recieved: " + data.decode('utf-8'))
    
