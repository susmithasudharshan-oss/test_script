#script for Number Guessing Game
#!/bin/bash

guess=$((RANDOM % 20 + 1))
read -p "Please guess the number" guess
while true ; do
      if [[ $guess -le 20 ]]; then
      echo " too low"
else
	echo "too high"
      fi
done
