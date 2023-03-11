#!/bin/bash
cp ~/.bashrc .bashrc.tmp
grep -v "alias sudo=\"$(pwd)/sudocapture.sh\"" ~/.bashrc > .bashrc.tmp
mv .bashrc.tmp ~/.bashrc
source ~/.bashrc