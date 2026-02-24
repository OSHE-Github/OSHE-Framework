#!bin/bash
python3 -m venv ~/py_envs
source ~/py_envs/bin/activate

pip install easymcp2221
pip install psutil
pip install pyopencl
pip install pyserial

python3 displayI2C.py

