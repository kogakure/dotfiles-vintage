#!/bin/sh

# Copy additional binaries
cp ~/Dropbox/Software/Dotfiles/bin/home/* ~/.dotfiles/bin/

# Install .gitconfig.local
cp ~/Dropbox/Software/Dotfiles/gitconfig.local ~/.gitconfig.local

# Install LaunchAgents
cp ~/Dropbox/Software/LaunchAgents/* ~/Library/LaunchAgents/

# Install Dashboard Widgets
sudo cp ~/Dropbox/Software/Dashboard\ Widgets/* /Library/Widgets

# Install QuickLook Plugins
sudo cp ~/Dropbox/Software/QuickLook-Plugins/* /Library/QuickLook/

# Install Spotlight Plugins
sudo cp ~/Dropbox/Software/Spotlight-Plugins/* /Library/Spotlight/

# Prepare additional Software for installation
mkdir ~/Downloads/install/
mkdir ~/.tmuxinator/

cp ~/Dropbox/Software/tmuxinator/*.yml ~/.tmuxinator/
cp ~/Dropbox/Software/*.{zip,dmg} ~/Downloads/install/

cp -R ~/Dropbox/Software/Brushes/ ~/Downloads/install/Brushes
cp -R ~/Dropbox/Software/Calibre/ ~/Downloads/install/Calibre
cp -R ~/Dropbox/Software/DEVONthink/ ~/Downloads/install/DEVONthink
cp -R ~/Dropbox/Software/iA\ Writer/ ~/Downloads/install/iA\ Writer
cp -R ~/Dropbox/Software/iTerm2/ ~/Downloads/install/iTerm2
cp -R ~/Dropbox/Software/Safari/ ~/Downloads/install/Safari
cp -R ~/Dropbox/Software/Systemeinstellungen/ ~/Downloads/install/Systemeinstellungen
