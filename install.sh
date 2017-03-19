#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -sf ${BASEDIR}/.config/nvim/init.vim ~/.config/nvim/init.vim

# bash
ln -sf ${BASEDIR}/.zshrc ~/.zshrc

