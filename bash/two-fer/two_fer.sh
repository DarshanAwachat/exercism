#! /bin/bash
main(){
if [ -z $1 ];then #-z for checking if 1 argument is passed or not
	echo "One for you, one for me."
else
	echo "One for $1, one for me."
fi
}
main "$@"
