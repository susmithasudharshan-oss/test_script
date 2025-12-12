#Employee Database Program
#1. Add Employee
#2. View All Employees
#3. Search Employee by ID
#4. Delete Employee
#5. Exit
#!/bin/bash

#to add emp details
add_emp () {
	echo "enter the employee details"
	read -p "enter the employee name: " name
	read -p "enter the employee ID: " id
	read -p "enter the employee Department: " dep
	read -p "enter the employee salary: " sal
	echo "$id,$name,$dep,$sal " >> emp.csv
	echo "Employee added successfuly"
}
#to view emp details
view_emp() {
	echo "employee details are as below:"
	cat emp.csv	
}

#to search emp details
search_emp () {
	echo "enter the employee id to search: "
	read id
	grep "^$id" emp.csv
}

#to delete emp details
del_emp(){
	echo "enter the employee id to delete: "
	read id
	awk -F',' -v id="$id" '$1 != id' emp.csv > temp.csv
	mv temp.csv emp.csv
	echo "employee deleted successfully"
}
while true; do
echo "1. Add Employee"
echo "2. View All Employees"
echo "3. Search Employee by ID"
echo "4. Delete Employee"
echo "5. Exit"
read -p "Please enter your choice: " cho
case $cho in 
	1) add_emp ;;
	2) view_emp ;;
	3) search_emp ;;
	4) del_emp ;;
	5) echo "exit"
		exit 0 ;;
	*) echo "invalid option" ;;
esac
done
