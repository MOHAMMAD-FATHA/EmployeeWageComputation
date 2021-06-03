echo " Welcome to EmployeeWage Computation Program on master branch"

isFullTime=1
isPartTime=2
wagePerHr=20
empHr=0
totalWage=0
randomnumber=$((RANDOM%3))

case $randomnumber in
	$isFullTime)
		echo "Employee is Present"
		;;
	$isPartTime)
		echo "Employee is Part Time"
		;;
	*)
		echo "Absent"
		;;
esac

randomnumber=$((RANDOM%3))
case $randomnumber in
        $isFullTime)
                echo "Employee is Present"
		empHr=8
                ;;
        $isPartTime)
                echo "Employee is Part Time"
                 empHr=4
		;;
        *)
                echo "Absent"
                empHr=0
		;;
esac

totalWage=$(($wagePerHr*$empHr))
echo "Daily Wage of Employee is:" $totalWage
