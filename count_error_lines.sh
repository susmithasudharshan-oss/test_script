#script that counts how many lines contain the word "error" in a file.
#!/bin/bash

echo " total no of lines coantains error are: "
grep -i "error" log.txt | wc -l
