#! /bin/bash
set -o nounset
main ()
{
if (( !$# )) ;then
  main "you"
else
  echo "One for $1, one for me."
fi
}
main "$@" 
###########
#-This is an interesting approach. However, recursion is a bit of an unwieldy tool for this problem. How about putting the you/$1 value into a variable?
###########
