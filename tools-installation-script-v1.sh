#!/bin/bash

# colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NO_COLOR='\033[0m'

#essentials before development
printf "${YELLOW}Updating system first\n${NO_COLOR}"
sudo apt update
sudo apt upgrade
printf "${YELLOW}Installing essentials\n${NO_COLOR}"
sudo apt-get install openjdk-8-jdk
sudo apt-get install git-core gnupg flex bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig

# install platform-tools
if [ ! -d "$HOME/platform-tools" ] ; then
   unzip platform-tools-latest-linux -d ~
fi
source ~/.profile

# install google repo
mkdir ~/bin # google repo location
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo # chmod a+x makes something executable automatically
source ~/.profile

# git installation
sudo apt install git
cd ~/
git clone https://github.com/akhilnarang/scripts
cd scripts
./setup/android_build_env.sh
cd ..
  

# creating rom directory
printf "${RED}New folder name\n${NO_COLOR}"
Var_Dir=$name
read Var_Dir # variable_directory
mkdir -p $Var_Dir
cd $Var_Dir # source code location
DIR=$HOME
printf "${GREEN}$Var_Dir folder was successfully created at $DIR\n${NO_COLOR}"

# set git repo details
printf "${RED}Set your Git email\n${NO_COLOR}"
read GIT_AUTHOR_EMAIL
git config --global user.email "$GIT_AUTHOR_EMAIL"
printf "${RED}Set your Git username\n${NO_COLOR}"
read GIT_AUTHOR_USERNAME
git config --global user.name "$GIT_AUTHOR_USERNAME"
git config --list | grep user.email
git config --list | grep user.name
exit
