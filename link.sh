#!/bin/bash
cd $HOME
rm $HOME/.profile.backup
mv $HOME/.profile $HOME/backup/.profile.backup
ln -s $HOME/git/config/.profile .profile
ln -s $HOME/git/config/.vimrc .vimrc
