#!/bin/bash

# function git
git_function () {
   printf "${RED}Set your Git email\n${NO_COLOR}"
   read GIT_AUTHOR_EMAIL
   git config --global user.email "$GIT_AUTHOR_EMAIL"
   printf "${RED}Set your Git username\n${NO_COLOR}"
   read GIT_AUTHOR_USERNAME
   git config --global user.name "$GIT_AUTHOR_USERNAME"
   git config --list | grep user.email && git config --list | grep user.name
}

# colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NO_COLOR='\033[0m'

# essentials before development
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

# git check & configuration
if [ ! -f "$HOME/.gitconfig" ]
then
   git_function
else
   printf "${YELLOW}Git was previously configured\n${NO_COLOR}"
   while true; do
   read -r -p "Do you want to re-configure git?  " yn
   case $yn in
   [Yy]* )
   git_function;;
   [Nn]* )
   echo "Exiting"
   break;;
   esac
done
fi

# creating rom directory
printf "${RED}If you already have created a folder for the source code press Esc, then Enter\n${NO_COLOR}"
printf "${RED}If you want to create a folder again, simply continue as instructed\n${NO_COLOR}"
read -p "New folder name:  " Var_Dir # variable_directory
echo "FOLDER=$Var_Dir" >> ~/tools-installation-script.sh
mkdir -p $Var_Dir 
cd $Var_Dir # source code location
pwd
RM_VAR="rm -r $Var_Dir" 
dest=$HOME/tools-uninstallation-script.sh
echo "$RM_VAR" >> "$dest"
printf "${GREEN}$Var_Dir folder was successfully created at $HOME\n${NO_COLOR}"

# repo download and source sync
while true; do
   read -r -p "Do you want to download ROMs repo right now?  " yn
   case "$yn" in
   [Yy]* ) 
   printf "Please insert ROMs repo link\n"
   read REPO # enter repo link here
   $REPO
   while true; do
      read -r -p "Do you want to sync ROMs source code?  " yn
      case "$yn" in
      [Yy]* ) 
      printf "Press Ctrl + H to see hidden files\n"
	  printf "Syncing source. It'll take couple of hours, depending on your internet connection.\n"
	  repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags &> /dev/null # source sync
      printf "Done\n"
      exit;;
      [Nn]* ) 
      echo "Exiting"
      continue;;
      esac
   done
   exit;;
   [Nn]* ) 
   echo "Exiting"
   exit;;
   * ) "Please enter a valid answer (Yy/Nn)";;
   esac
done
