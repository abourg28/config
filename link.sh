#!/bin/bash
cd $HOME
rm $HOME/.bashrc.backup
mv $HOME/.bashrc $HOME/backup/.bashrc.backup
ln -s $HOME/git/config/.bashrc .bashrc
ln -s $HOME/git/config/.vimrc .vimrc
ln -s $HOME/git/config/.vim  .vim
