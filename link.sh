#!/bin/bash
cd $HOME
rm $HOME/.profile.backup
mv $HOME/.profile $HOME/.profile.backup
ln -s $HOME/config/.profile .profile
ln -s $HOME/config/.vimrc .vimrc
ln -s $HOME/config/.gitconfig .gitconfig
