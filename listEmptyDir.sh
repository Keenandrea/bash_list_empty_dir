#!/bin/bash
#|author: Keenan Andrea; built: 09/30/2018;
#|bash script that applies the directory name given during execution, e.g., "./path/to/dir"|
#|to a loops through the contents, displaying both file and directory names. If the loop   |
#|happens upon an empty directory, the file EmptyDir.txt is created, and the name of the   |
#|empty directory is written within. If the program is instantiated with a parameter list  |
#|less than or greater than 1, it is exited with a non-zero status.                        |

if [[ $# > 1 || $# < 1 ]]
then
	echo Usage: "$(basename "$0")" illegal number of parameters 
	exit 1
fi

cd "$(dirname "$(readlink -f "$0")")"

cd "$1"

for files in * 
do
	if [ -f ${files} ]
	then
		echo $files
	
	elif [ -n "$(find "${files}" -maxdepth 0 -type d -empty 2>/dev/null)" ]
	then
			echo ${files} >> EmptyDir.txt
	fi
done
