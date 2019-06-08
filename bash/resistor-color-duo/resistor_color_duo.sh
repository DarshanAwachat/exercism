#! /bin/bash
main(){
color=""
output=""
function leap {
	if [ $i == "black" ];then
		color=0
	elif [ $i == "brown" ];then
		color=1
	elif [ $i == "red" ];then
		color=2
	elif [ $i == "orange" ];then
		color=3
	elif [ $i == "yellow" ];then
		color=4
	elif [ $i == "green" ];then
		color=5
	elif [ $i == "blue" ];then
		color=6
	elif [ $i == "violet" ];then
		color=7
	elif [ $i == "grey" ];then
		color=8
	elif [ $i == "white" ];then
		color=9
	else
		color=10
	fi
}

for i in $*;do
	if [ $i -eq $i 2> /dev/null ];then	
		echo "Enter color only"
		exit 1

	else	
		leap $i
		if [ $color -eq 10 ];then 	
			echo "invalid color"			
			exit 1
		else
			output=$output$color
		fi	
	fi
done
echo ${output}
}
main "$@"
