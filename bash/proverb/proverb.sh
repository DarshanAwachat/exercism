#! /bin/bash
main() {
	arr=($*)
	arr_len=$#
	expected=""
  for((i=0;i<arr_len-1;i++)); do
  	expected+= echo -e "For want of a ${arr[i]} the ${arr[i+1]} was lost." 
	done
	if [[ $arr_len -gt 0 ]]; then
		expected+="And all for the want of a ${arr[0]}."
		echo $expected	
	fi
}
main "$@"
