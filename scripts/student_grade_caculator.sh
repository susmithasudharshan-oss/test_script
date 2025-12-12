#Student Grade Calculator
#!/bin/bash
echo "Please enter the marks for the following 5 subjects"
read -p "1. Kannada: " kan
read -p "2. English: " eng
read -p"3. Mathematics: " mat
read -p "4. Science: " sci
read -p "5. Social Studies: " soc
total=$((kan + eng + mat + sci + soc))
echo "total marks: $total "
avg=$((total / 5))
echo "average: $avg"
if [[ $avg -ge 90 && $avg -le 100 ]] ; then
	echo "grade is A"
elif [[ $avg -le 89 && $avg -ge 80 ]] ; then
	echo "grade is B"
elif [[ $avg -le 79 && $avg -ge 70 ]] ; then
	echo "grade is C"
elif [[ $avg -le 69 && $avg -ge 60 ]] ; then
	echo "grade is D"
else
	echo "grade is F"
fi
