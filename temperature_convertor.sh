#Temperature Converter
#!/bin/bash

echo "Temperature Convertor"
echo "1. Celsius to Fahrenheit"
echo "2. Fahrenheit to Celsius"
read -p "Please enter your choice: " cho
case $cho in
	1) read -p "Enter the temperature in celsius: " cel
		far=$(echo  "scale=2; (($cel * 9/5) + 32) " | bc)
		echo "temperature in Fahrenheit is : $far" ;;
	2) read -p "Enter the temperature in Fahrenheit: " far
		cel=$(echo "scale=2; (($far - 32) * 5/9 )" | bc)
		echo "temperature in celsius is: $cel" ;;
	*) echo "invalid choice" ;;
esac
