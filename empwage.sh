declare -A EmpWage
#arr=()
echo " Welcome to EmployeeWage Computation Program on master branch"

isFullTime=1
isPartTime=2
wagePerHr=20
empHr=0
totalWage=0
randomnumber=$((RANDOM%3))
Day=1
hour=1
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
	for((i=1; i<=20; i++))
	do
		EmpWage[$i]=$totalWage
	done
done 


#sort -k1,1 -n ${EmpWage[@]}

#for((i=1; i<=${!EmpWage[@]}; i++))
#do 
for i in ${!EmpWage[@]}
do
	echo "Wage of Day $i is ${EmpWage[$i]}"
done

#echo ${EmpWage[@]}
echo "Wage of Employee is:" $totalWage


