if [ $# -ne 3 ]
then 
	echo "This is required more" >&2
exit 1
fi

if [ $1 -gt $2 ] && [ $1 -gt $3 ] 
then
	echo "$1 is big"
elif [ $2 -gt $1 ] && [ $2 -gt $3 ]
then
	echo "$2 is big"
elif [ $3 -gt $1 ] && [ $3 -gt $1 ]
then
	echo "$3 is big"
elif [ $1 -eq $2 ] && [ $1 -eq $3 ] && [ $2 -eq $3 ]
then
	echo "All are equal"
fi

