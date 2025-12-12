#script for Number Guessing Game
#!/bin/bash

number=$((RANDOM % 20 + 1))

while true; do
	read -p "Guess the number (1–20): " guess
	if (( guess < number )); then
		echo "Too low!"
	elif (( guess > number )); then
                 echo "Too high!"
	 else
		 echo "Correct! The number was $number"
		 break
	fi
done
