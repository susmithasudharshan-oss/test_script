#Log Extractor
#!/bin/bash

grep -i "error" log.txt
echo "ertaction of line containing word error completed"
grep -i "error" log.txt > error.txt
echo "error file created successfully"
grep -i "warning" log.txt
echo "ertaction of line containing word warning completed"
grep -i "warning" log.txt > warning.txt
echo "warning file created successfully"
