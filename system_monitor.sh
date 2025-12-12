#system health monitor
#!/bi/bash

cpu=$( top -b -n 1 | grep "Cpu(s)" | awk '{print $8}' | cut -f 1 -d ".")
echo "CPU usage: $cpu"
used=$(free -m |grep -i mem | awk '{print $3}')
#echo "used memory: $used"
total=$(free -m |grep -i mem | awk '{print $2}')
#echo "total memory: $total"
per=$( echo "scale=2; (($used*100) / $total)" | bc)
echo "Memory Usage: $per"
disk=$(df -h | awk NR==2 | awk '{print $5}')
echo "Disk Usage: $disk"
echo "top 5 CPU Processes: "
ps aux --sort=-%cpu | head -5

