#! /bin/bash

if (($#==2))
then
		if test -e "$1";
		then
			if grep -w "$2" $1
			then	
					echo "name is present"
			else
				echo "$2">>$1
			fi
			
	else
		echo "file is not present"
	fi		
										
else
	echo "enter correct number of args"
fi
