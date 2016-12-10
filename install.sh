#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -s ${BASEDIR}/.config/nvim/init.vim ~/.vimrc

# bash
ln -s ${BASEDIR}/.bash_profile ~/.bashrc

# git
ln -s ${BASEDIR}/gitconfig ~/.gitconfig