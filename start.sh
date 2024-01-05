#!/bin/bash

# update and upgrade of apt setting all "yes"
yes|apt update
yes|apt -y upgrade
if [ ! -d ${HOME}/dotfiles ]
then #if dotfiles does not exist in homedir.
	echo "error:dotfiles does not exists proper position, must be home/USER/dotfiles"
else
	cd ${HOME}/dotfiles
 	#here is necessary to install deno properly
 	echo "export DENO_INSTALL=${HOME}/.deno" >> ${HOME}/.bashrc
  	echo 'export PATH="$DENO_INSTALL/bin:$PATH"' >> ${HOME}/.bashrc
	source ~/.bashrc
 	#Code for deno's install end
	./nviminstall.sh
fi

