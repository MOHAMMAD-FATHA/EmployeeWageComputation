EmployeeWage()
{
echo " Welcome to EmployeeWage Computation Program on master branch"

isFullTime=1
isPartTime=2
wagePerHr=20
empHr=0
totalWage=0
randomnumber=$((RANDOM%3))
Day=0
hour=0
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
while [ $Day -le 20 ] && [ $hour -le 100 ]
do
case $randomnumber in
        $isFullTime)
		empHr=8
		hour=$((hour+8))
                ;;
        $isPartTime)
                empHr=4
		hour=$((hour+4))
		;;
        *)
                empHr=0
		;;
esac
totalWage=$(($totalWage+( $wagePerHr*$empHr )))
Day=$((Day+1))
done 
echo "Daily Wage of Employee is:" $totalWage
}

EmployeeWage

