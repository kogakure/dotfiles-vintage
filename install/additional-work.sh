#!/bin/sh

./install/additional.sh

# Install ~/.gemrc
cp ~/Dropbox/Software/Dotfiles/gemrc-work ~/.gemrc

# Install .localrc
cp ~/Dropbox/Software/Dotfiles/localrc-work ~/.localrc

# Copy additional binaries
cp ~/Dropbox/Software/Dotfiles/bin/work/* ~/.dotfiles/bin/

# Copy additional zsh files
cp -R ~/Dropbox/Software/Dotfiles/zsh/* ~/.dotfiles/zsh/

# Prepare additional Software for installation
cp -R ~/Dropbox/Software/Microsoft\ Remote\ Desktop/ ~/Downloads/install/Microsoft\ Remote\ Desktop
cp -R ~/Dropbox/Software/Sequel\ Pro/ ~/Downloads/install/Sequel\ Pro
