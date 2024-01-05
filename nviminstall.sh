#!/bin/bash

#because of the necessity to install neovim 0.8+ for deno and ddc.vim's require do not use apt in installing
cd ${HOME}
#this is version 0.9.5
apt install wget
wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
mv nvim-linux64.tar.gz /bin
cd /bin
tar xzvf nvim-linux64.tar.gz
rm -fr nvim-linux64.tar.gz
ln -s ./nvim-linux64/bin/nvim ./nvim
cd ${HOME}
#End of Install and come back to home dir

#install vim-plug
yes|apt install curl
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
#install deno to use ddc.vim
yes|apt install unzip #this need to do following line
curl -fsSL https://deno.land/install.sh | sh

#put symbolic link
if [ ! -d ${HOME}/.config/nvim]
then
	mkdir -p ${HOME}/.config/nvim
fi
ln -s ${HOME}/dotfiles/.config/nvim/init.vim ${HOME}/.config/nvim/init.vim
nvim -c PlugInstall -c q -c q

