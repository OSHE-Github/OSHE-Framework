#!bin/bash

#Set the port and baud rate
PORT="/dev/ttyACM0"
BAUD=38400

#Open the port and keep it open while the script is running
stty -F "$PORT" $BAUD cs8 -cstopb -parenb -crtscts -ixon -ixoff -echo raw
exec 3>"$PORT"

#Main While loop
while true; do

#Fetch maximum memory
memmax=$(grep MemTotal /proc/meminfo | awk '{print $2}')
memmax=$((memmax / 1024))
#echo "${memmax} MB"

#Fetch avaliable memory
memavail=$(grep MemAvailable /proc/meminfo | awk '{print $2}')
memavail=$((memavail / 1024))
#echo "${memavail} MB"

#calculate used memory based on max and avaliable
memused=$((memmax - memavail))
#echo "${memused} MB"

#Fetch cpu temp from file
cputemp=$(< /sys/class/thermal/thermal_zone0/temp)
cputemp=$(echo "scale=1; $cputemp / 1000" | bc -l)
#echo "${cputemp} C"

#Fetch cpu utilization from file
cpuutil=$(cat /proc/stat | grep 'cpu ' | awk '{print ($2+$4)*100/($2+$4+$5)}')
cpuutil=$(echo "scale=2; $cpuutil / 1" | bc -l)
#echo "${cpuutil}%"

#Fetch gpu temp from lm-sensors
gputemp=$(sensors amdgpu-* | grep 'edge:' | awk '{print $2}')
#Remove extra chars
gputemp="${gputemp//°C}"
gputemp="${gputemp//+}"
#echo "${gputemp}C"

#Fetch gpu usage from file
gpuutil=$(< /sys/bus/pci/devices/0000:04:00.0/gpu_busy_percent)
#echo "${gpuutil}%"

#Fetch gpu usage from file
apupower=$(sensors amdgpu-* | grep 'PPT:' | awk '{print $2}')
apupower="${gputemp// W}"
#echo "${apupower} W"

#Fetch gpu vram from file
vmemmax=$(< /sys/bus/pci/devices/0000:04:00.0/mem_info_vram_total)
vmemmax=$((vmemmax / 1024))
vmemmax=$((vmemmax / 1024))
#echo "${vmemmax} MB"

#Fetch gpu vram usage from file
vmemused=$(< /sys/bus/pci/devices/0000:04:00.0/mem_info_vram_used)
vmemused=$((vmemused / 1024))
vmemused=$((vmemused / 1024))
#echo "${vmemused} MB"

#Send data out to COM port and sleep
echo -n "$(($memmax))P$(($memused))P${cputemp}P${cpuutil}P${gputemp}P${gpuutil}PE" >&3
sleep 1
done
