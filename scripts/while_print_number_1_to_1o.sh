#loop that prints numbers 1 to 10.
#!/bin/bash

count=1
while [ $count -le 10 ]
do
	echo "count is $count"
	((count++))
done
