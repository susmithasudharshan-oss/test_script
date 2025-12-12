#Log File Summary Tool
#!/bin/bash

echo "total lines in the file server.log is: "
wc -l server.log
echo "total lines containing the word error are: "
grep -i "error" server.log | wc -l
echo "total lines containing the word warning are: "
grep -i "warning" server.log | wc -l
echo "top 3 most repeated words  in server.log are: "
cat server.log | tr '[:upper:]' '[:lower:]' | grep -wo '[[:alnum:]]\+' | sort | uniq -c | sort -nr | head -3
echo "the date when script was executed is: "
#start log_file_summary_tool.sh | grep Access
ls -lu log_file_summary_tool.sh | awk '{print $6, $7}'
