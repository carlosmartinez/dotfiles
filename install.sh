#!/bin/bash

dir=~/dotfiles
backupdir=~/dotfiles_old
files=".vim .zshrc .gitconfig .gitignore_global"

rm -rf $backupdir
mkdir $backupdir

cd $dir

for file in $files; do
  mv ~/$file ~/dotfiles_old/
  ln -s $dir/$file ~/$file
done

source $dir/.zshrc
