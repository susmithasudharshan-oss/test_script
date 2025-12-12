#a script that takes a filename as input and prints
#!/bin/bash

read -p "Please enter the file name: " file
if [[ -f $file ]] ; then
	lines=$(wc -l $file)
	echo "total lines in the file $file are: $lines"
	words=$(wc -w $file)
	echo "total words in the file $file are: $words"
	largest=$(tr -s ' ' '\n' $file)
	echo "largest word in the file is: $largest"
	echo "first 5 lines of the file $file is"
	head -n 5 $file
else
	echo "$file does not exist"
fi
