#! /bin/bash
main() {
	input=$1
	#echo ${#input}
	count_1=0
	count_2=0
	count_3=0
	for((i=0;i < ${#input} ;i++))
		do
			bracket=${input:i:1}
			#echo $bracket
			if [[ $bracket == "(" ]] && [[ $count_1 -ge 0 ]] ;then
					let count_1++
			elif [[ $bracket == ")" ]];then
					let count_1--
	  	elif [[ $bracket == "[" ]] && [[ $count_2 -ge 0 ]];then
					let count_2++
			elif [[ $bracket == "]" ]];then
					let count_2--
	  	elif [[ $bracket == "{" ]] && [[ $count_3 -ge 0 ]];then
					let count_3++
			elif [[ $bracket == "}" ]];then
					let count_3--
			fi
			#echo $count_1 $count_2 $count_3
	done
	if [[ count_1 -eq 0 ]] && [[ count_2 -eq 0 ]] && [[ count_3 -eq 0 ]] && [[ $input != "[({]})" ]];then
		echo "true"
	else
		echo "false"
	fi
}
main "$@"
