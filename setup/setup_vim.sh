#/bin/bash

VUNDLE_DIRECTORY="$HOME/.vim/bundle/Vundle.vim"
if [ ! -d $VUNDLE_DIRECTORY ]; then
	git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_DIRECTORY
fi
vim +PluginInstall +qall
