#auto backup log
#!/bin/bash

folder="backup_$(date +%F)"

mkdir -p "$folder"

cp *.txt "$folder" 2>/dev/null
cp *.sh "$folder" 2>/dev/null
cp *.log "$folder" 2>/dev/null
da=$(date +"%Y-%m-%d_%H:%M:%S")
echo "Backup created at $da"
count=$(find . -maxdepth 1 -type f | wc -l)
echo "files copied: $count"
