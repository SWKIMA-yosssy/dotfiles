#!/bin/bash

# update and upgrade of apt setting all "yes"
yes|apt update
yes|apt -y upgrade
if [ ! -d ${HOME}/dotfiles ]
then #if dotfiles does not exist in homedir.
	echo "error:dotfiles does not exists proper position, must be home/USER/dotfiles"
else
	cd ${HOME}/dotfiles
	source ./cenv.sh
	source ./nviminstall.sh
fi

