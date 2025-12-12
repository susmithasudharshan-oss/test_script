#a script that takes a password and checks if it has:
#Minimum 8 characters
#At least 1 uppercase letter
#At least 1 lowercase letter
#At least 1 digit
#At least 1 special character
#!/bin/bash

read -p "Please enter your password: " pass
errors=()
#to check length
[[ ${#pass} -ge 8 ]] || errors+=("password should contain minimun 8 character")
#to check 1 upper case
[[ $pass =~ [A-Z] ]] || errors+=("password should contain atleast one upper case")
#to check 1 lower case
[[ $pass =~ [a-z] ]] || errors+=("password should contain atleast one lower case")       
#to check 1 digit
[[ $pass =~ [0-9] ]] || errors+=("password should contain atleast one digit")
#to check 1 special character
[[ $pass =~ [\@\#\$\%\^\&\*\!\+\-] ]] || errors+=("Add one special character.")
#to print result
if [ ${#errors[@]} -eq 0 ] ; then
	echo "password is strong"
else
	echo "password is weak"
	printf '%s\n' "${errors[@]}"
fi
