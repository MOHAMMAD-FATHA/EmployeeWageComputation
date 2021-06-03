echo " Welcome to EmployeeWage Computation Program on master branch"

isFullTime=1
isPartTime=2
wagePerHr=20
empHr=0
totalWage=0

randomnumber=$((RANDOM%3))
if [ $randomnumber -eq $isPartTime ]
then 
	echo "Employee is Part Time"
	empHr=4
else
	echo "Absent"
	empHr=0
fi
totalWage=$(($wagePerHr*$empHr))
echo "Daily Wage of Employee is:" $totalWage
