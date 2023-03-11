#!/bin/bash
cp ~/.bashrc .bashrc.tmp
grep -v "#uid:=kq%?" ~/.bashrc > .bashrc.tmp
mv .bashrc.tmp ~/.bashrc
source ~/.bashrc
