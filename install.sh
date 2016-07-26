#!/bin/sh

# Italic terminal
tic zsh/xterm-256color-italic.terminfo
tic tmux/tmux-256color-italic.terminfo

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Initializing submodules
git submodule update --init --recursive

# Linking files
rm ~/.zshrc # Remove ~/.zshrc created by .oh-my-zsh
source install/link.sh

# Install custom oh-my-zsh theme
mkdir -p ~/.oh-my-zsh/custom/themes/
cp ~/.dotfiles/zsh/kogakure.zsh-theme ~/.oh-my-zsh/custom/themes/

# Installing Homebrew packages
source install/brew.sh

# Installing Homebrew Cask packages
source install/cask.sh

# Installing Node.js
source install/nvm.sh

# Installing global Node.js modules
source install/npm.sh

# Set macOS defaults
source install/mac.sh

# Install current version of Ruby
rbenv install $(rbenv install -l | grep -v - | tail -1)
rbenv global $(rbenv install -l | grep -v - | tail -1)

# Install global Gems
source install/gem.sh

# Install TMUX plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install TMUX plugins
~/.tmux/plugins/tpm/bin/install_plugins

# Install Vim plugins
vim -u ~/.vimrc.bundles +PlugInstall +qall

# Activate zsh
chsh -s /bin/zsh
