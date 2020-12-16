#!/bin/bash

# colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NO_COLOR='\033[0m'

# git uninstall script
printf "${YELLOW}Removing installed/created files\n${NO_COLOR}"
sudo apt remove git
sudo apt remove openjdk-8-jdk
sudo apt autoremove
rm -r scripts
rm -r platform-tools
rm -r ~/bin
printf "${YELLOW}Files were successfully removed\n${NO_COLOR}"
