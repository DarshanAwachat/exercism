#!/usr/bin/env bash
set -o errexit # exception handling if variable if error exit
set -o nounset # exception handling if variable not set variable exit
main(){
input=$1 #taking only the first input
len=${#input} #used # for length and $ for taking value of #input
reverse=""
for((i = $len - 1; i >= 0; i--))  
    do 
        reverse=$reverse${input:$i:1} # $ is the value of the variable and concatenates directly
    done
echo ${reverse}
}
main "$@" # used for passing arguments 
