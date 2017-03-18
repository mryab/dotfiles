#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
<<<<<<< HEAD
ln -s ${BASEDIR}/.config/nvim/init.vim ~/.vimrc

# bash
ln -s ${BASEDIR}/.bash_profile ~/.bashrc

# git
ln -s ${BASEDIR}/gitconfig ~/.gitconfig
=======
ln -sf ${BASEDIR}/.config/nvim/init.vim ~/.config/nvim/init.vim

# zsh
ln -sf ${BASEDIR}/.zshrc ~/.zshrc
>>>>>>> 2c1e01c... force symlink
