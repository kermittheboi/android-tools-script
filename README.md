## Introduction

Android Tools Script is a universal Linux script created entirely in Bash that helps new and experienced users set their Linux environment faster and hassle free for custom rom development. It's an All-in-One script that includes every necessary command to get you started with custom rom development. 

## Why use this script?

Usually most of the commands are all over the place, either missing something important or being outdated. This specific script has all of them in one place and executes them automatically without worrying about missing or incomplete scripts.

## What's included?

Git installation, Google's Repo, platform tools zip for ADB and fastboot, akhilnarang's building script, user's custom folder for the source code & auto-uninstallation script that removes all changes made.

## Credits

- Google, for their repo, platforms tools for Linux and required packages code.
- akhilnarang, for his script.
- LineageOS Team, for their build guide.
- PixelExperience Team, for their build guide.
- Evolution X, for their wiki.
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
- "bad interpreter". This error means you imported the code/script from Windows to Linux. Simply download or copy the script from a Linux VM/host and run it from there.

## ToDo List

- ~~Make uninstall script.~~ [DONE]
- ~~Uninstall script will also delete user's created folder.~~ [DONE]
- ~~Cleaning up the code.~~ [DONE]
- ~~Prevent accidental reset of Git details and new folder.~~ [DONE]
- ~~Script asks user if they want to download ROMs repo.~~ [DONE]
- ~~Script asks user if they want to sync the source code from the repo.~~ [DONE]
- ~~Script asks user if they want to sync the source code from the repo.~~ [DONE]
- Script asks user if they want to build the environment.
