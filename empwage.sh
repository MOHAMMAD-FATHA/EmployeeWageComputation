echo "Welcome to Employee Wage Computation Program on Master Branch"

isFullTime=1
isPartTime=2

randomnumber=$((RANDOM%3))
if [ $randomnumber -eq $isFullTime ]
then 
	echo "Employee is Present"
elif [ $randomnumber -eq $isPartTime ]
then 
	echo "Employee is Part Time"
else
	echo "Absent"
fi
