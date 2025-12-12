#Mini Backup Script
#!/bin/bash

dir=$(date +%Y-%m-%d)
mkdir backup_$dir
echo "directory backup_$dir created successfully"
cp *.txt backup_$dir
echo "copied all the text files into backup_$dir successfully"
cp *.sh backup_$dir
echo "copied all the sh files ito backup_$dir successfully"
cp *.log backup_$d0ir
echo "copied all the log files into backup_$dir successfully"
