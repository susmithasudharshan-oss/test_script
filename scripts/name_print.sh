#function named greet that prints your name.
#!/bin/bash

greet () {
	echo "my name is susmitha"
}
echo "1. print your name"
read -p "enter your choice" cho
case $cho in
	1) greet ;;
esac
