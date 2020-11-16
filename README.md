## Introduction

Android Tools Script is a universal Linux script created entirely in Bash that helps new and experienced users set their Linux environment faster and hassle free for custom rom development.

## Why use this script?

Usually most of the commands are all over the place, either missing something important or being outdated. This specific script has all of them in one place and executes them automatically without worrying about missing or incomplete scripts.

## What's included?

Git installation, Google's Repo, platform tools zip for ADB and fastboot, akhilnarang's building script and user's custom folder for the source code.

## Credits

- Google, for their repo, platforms tools for Linux and required packages code.
- LineageOS Team, for their build guide.
- PixelExperience Team, for their build guide.
- CrDroid, for their useful comments.

## Requirements

- A 64-bit Linux distro
- Internet connection
- Basic knowledge of Linux

## Instructions

1. Extract the zip on Home.
2. Open terminal and run it from there.
3. Type Y/y, write your desired folder's name and set Git details when it's needed.
4. Done!

## Common errors

- In case you get the "Permission denied" error in terminal, click on the script, hit Ctrl + I, go to Permissions and tick "Allow executing file as program".
- If you get an error from extracting the zip file "platform-tools-latest-linux", open the terminal and run this command: unzip platform-tools-latest-linux -d ~

## ToDo List

- Make uninstall script. (on v1.1)
- Uninstall script will also delete user's created folder. (Soon!)
- Cleaning up the code. (on v1.1)
- Prevent accidental reset of Git details and new folder.
- Script asks user if they want to download ROMs repo.
- Script asks user if they want to sync the source code from the repo.
- Script asks user if they want to build the environment.
