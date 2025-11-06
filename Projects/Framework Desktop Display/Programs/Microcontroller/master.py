from sys import platform

if platform == "linux":
    from linDisplay import display
elif platform == "win32":
    from winDisplay import display
    
display()