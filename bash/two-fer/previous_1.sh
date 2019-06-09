#! /bin/bash
main(){
if [ -z $1 ];then #-z for checking if 1 argument is passed or not
	echo "One for you, one for me."
else
	echo "One for $1, one for me."
fi
}
main "$@"
#################################################
#-L2 Usually the contents of a function get indented by one level.
#-L3 In bash, prefer [[ over [. It's more powerful and less likely to act in #unexpected ways.
#-What happens if you were to add set -o nounset to your code and call it without #any args? Related, The best way to test the number of arguments is to test that number directly. bash provides a $# variable which expands to the number of #arguments provided. Though for arithmetic operations (numbers), prefer (( over [[. (( is an arithmetic operation while [[ is used for strings.
#-Can you solve this in a way that doesn't have a mostly duplicated output string? #Duplication in code is a hassle to maintain as any change needs to be applied across multiple locations.
################################################
