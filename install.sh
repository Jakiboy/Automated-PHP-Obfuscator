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
Dir='bin'
if [ ! -d "${Dir}" ]; then
	echo -e "${G}Cloning yakpro"
    git clone https://github.com/pk-fr/yakpro-po.git bin
	echo -e "${G}Overriding yakpro config"
    cp "${Dir}/include/classes/config.php" "${Dir}/include/classes/config.php.backup"
    rm "${Dir}/include/classes/config.php"
    cp "config" "${Dir}/include/classes/config.php"
fi
if [ ! -d "input" ]; then
	mkdir input
fi
if [ ! -d "output" ]; then
	mkdir output
fi
cd "${Dir}"
if [ ! -d "PHP-Parser" ]; then
	echo -e "${G}Cloning PHP-Parser"
    git clone https://github.com/nikic/PHP-Parser.git
fi
echo -e "${B}Done :D"
echo -e "${B}---------------------------"
echo -e "${B}Press Enter to Exit"
printf ""
read PAUSE