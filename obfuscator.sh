#!/bin/bash
R='\033[0;31m'
G='\033[0;32m'
B='\033[0;96m'
echo -e "${G}Automated PHP Obfuscator : https://github.com/Jakiboy/Automated-PHP-Obfuscator"
echo -e "${G}YAK Pro - Php Obfuscator : https://github.com/pk-fr/yakpro-po"
echo -e "${G}PHP Parser               : https://github.com/nikic/PHP-Parser"
echo -e "${G}______________________________________________________________________________"
if ! git --version &> /dev/null
then
    echo -e "${R}Git not installed"
    echo -e "${R}Press Enter to Exit"
	printf ""
	read PAUSE
	if [ "$PAUSE" == "" ]; then
		exit
	fi
fi
FILES=./input/*.php
for f in $FILES
do
	FILE="$(basename $f)"
	if [ "$FILE" == "*.php" ]; then
	    echo -e "${R}No PHP File Found"
	    echo -e "${R}Press Enter to Exit"
		printf ""
		read PAUSE
		if [ "$PAUSE" == "" ]; then
			exit
		fi
	fi
  	echo -e "${G}Processing $FILE ..."
  	php "$PWD/bin/yakpro-po.php" $f -o "$PWD/output/$FILE"
done
echo -e "${B}Done :D"
echo -e "${B}---------------------------"
printf ""
read PAUSE