#Simple To-Do List
#!/bin/bash

list=()
add_task () {
	echo "enter the task to add"
	read add
	list+=("$add")
	echo "$add task added"
}
view_task () {
	echo "current task are displayed"
	echo "${list[@]}"
}
delete_task () {
	echo "enter the task to deleted: "
	read del
	echo "Deleted task: ${list[$del]}"
	unset list[$del]
	list=("${list[@]}")
        view_task
}

while true; do
echo "please enter your option: "
echo "1. Add ask"
echo "2. View task"
echo "3. Delete task"
echo "4. exit"
echo "please enter your choice: " 
read cho
case $cho in
	1) add_task ;;
	2) view_task ;;
	3) delete_task ;;
	4) echo "exit"
		exit 0 ;;
	*) echo "invalid option" ;;
esac
done
