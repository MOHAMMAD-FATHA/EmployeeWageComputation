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

if [ $randomnumber -eq $isFullTime ]
then
        echo "Employee is Present"
        empHr=8
else
        echo "Absent"
        empHr=0
fi

totalWage=$(($wagePerHr*$empHr))
echo "Daily Wage of Employee is:" $totalWage
