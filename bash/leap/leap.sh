#! /bin/bash
main(){
function leap {
input=$1
let output=$(($input % 4)) #(()) IS FOR EVALUATING THE EXPRESSION
	if [ $output -eq 0 ];then # we can directly use if [ $(($input % 4)) -eq 0 ] && [ $(($input % 100)) -nq 0 ] || [ $(($input % 400)) -eq 0 ]
		let output=$(($input % 100 ))
		if [ $output -eq 0 ];then
			let output=$(( $input % 400))
			if [ $output -eq 0 ]; then
				echo "true"
			else
				echo "false"	
			fi
		else
			echo "true"
		fi
	else
		echo "false"  
	fi
}
if [ $# -eq 1 ];then
	if [[ "$1" =~ ^[0-9]+$ ]];then # for checking whether the given argument is integer or not
	leap $1
	else
		echo 'Usage: leap.sh <year>'
		exit 1
	fi
else
	echo 'Usage: leap.sh <year>'
	exit 1
fi
}
main "$@"
