#!bin/bash

rm -f log.txt
touch log.txt
id >log.txt

python3 -m venv ~/py_envs
source ~/py_envs/bin/activate

pip --no-cache-dir install easymcp2221 >>log.txt
pip --no-cache-dir install psutil >>log.txt
pip --no-cache-dir install pyopencl >>log.txt
pip --no-cache-dir install pyserial >>log.txt
pip --no-cache-dir install pyamdgpuinfo >>log.txt

python3 displayMicro.py

