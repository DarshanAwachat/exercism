#! /bin/bash
main()
{
sol="you"
if(($# == 1)); then
	sol=$1
fi
echo "One for $sol, one for me."
}
main "$@"
