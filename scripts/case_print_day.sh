#a case script that prints MONDAY or TUESDAY based on user selection (1 or 2).
#!/bin/bash

echo "1. MONDAY"
echo "2. TUESDAY" 
read -p "please enter your choice: " cho
case $cho in
	1) echo "MONDAY" ;;
	2) echo "TUESDAY" ;;
	*) echo "invalid choice" ;;
esac
