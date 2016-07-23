#!/bin/sh

DOTFILES=$HOME/.dotfiles

#######################
### Create Symlinks ###
#######################

# Creating symlinks
linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )
for file in $linkables ; do
  target="$HOME/.$( basename $file '.symlink' )"
  if [ -e $target ]; then
    echo "~${target#$HOME} already exists... Skipping."
  else
    echo "Creating symlink for $file"
    ln -s $file $target
  fi
done

####################################
### Create Symlinks into .config ###
####################################

# Installing to ~/.config/
if [ ! -d $HOME/.config ]; then
  echo "Creating ~/.config"
  mkdir -p $HOME/.config
fi
for config in $DOTFILES/config/*; do
  target=$HOME/.config/$( basename $config )
  if [ -e $target ]; then
    echo "~${target#$HOME} already exists... Skipping."
  else
    echo "Creating symlink for $config"
    ln -s $config $target
  fi
done
