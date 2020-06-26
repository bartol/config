#!/usr/bin/env bash

# dotfiles
DOTFILES=$HOME/dotfiles
git clone https://github.com/bartol/dotfiles $DOTFILES
ln -svi $DOTFILES/.vimrc $HOME
ln -svi $DOTFILES/.zshrc $HOME
ln -svi $DOTFILES/.gitconfig $HOME
ln -svi $DOTFILES/.editorconfig $HOME
ln -svi $DOTFILES/.tmux.conf $HOME
ln -svi $DOTFILES/.tmate.conf $HOME

# vim
mkdir -pv $HOME/.vim/undo
git clone https://github.com/fatih/vim-go $HOME/.vim/pack/plugins/start/vim-go
git clone https://github.com/editorconfig/editorconfig-vim $HOME/.vim/pack/plugins/start/editorconfig-vim

# projects
PROJECTS=$HOME/dev
mkdir -pv $PROJECTS
cd $PROJECTS
git clone https://github.com/bartol/bartol.dev
git clone https://github.com/bartol/amadeus2.hr
git clone https://github.com/bartol/sandbox
cd -