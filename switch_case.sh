
#!/bin/bash

echo -e "Please Enter Your Word: \c"
read word
word=${word,,}

case $word in 
	a*)
		echo "Your word starts with 'a'"
		;;
	b*)
		echo "Your word starts with 'b'"
		;;
	*) 
		echo "Invalid Identity"
		;;
esac

