echo " Welcome to EmployeeWage Computation Program on master branch"

isFullTime=1
isPartTime=2
wagePerHr=20
empHr=0
totalWage=0

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

randomnumber=$((RANDOM%3))
if [ $randomnumber -eq $isFullTime ]
then 
	echo "Employee is Full Time"
	empHr=8
elif [ $randomnummber -eq $isPartTime ]
then
	echo "Employee is Part Time"
        empHr=4
else
	echo "Absent"
	empHr=0
fi
totalWage=$(($wagePerHr*$empHr))
echo "Daily Wage of Employee is:" $totalWage
