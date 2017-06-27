#!/bin/sh

# Italic terminal
tic -o ~/.terminfo terminfo/tmux.terminfo
tic -o ~/.terminfo terminfo/tmux-256color.terminfo
tic -o ~/.terminfo terminfo/xterm-256color.terminfo

# Install Xcode Developer Tools
xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Initializing submodules
git submodule update --init --recursive

# Linking files
source install/link.sh

# Install custom oh-my-zsh theme
source install/copy-zsh-theme.sh

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
source install/ruby.sh

# Install global Gems
source install/gem.sh

# Install tmux plugin manager & plugins
source install/tmux-plugins.sh

# Install Vim plugins
source install/vim-plugins.sh

# Symlink Neovim
source install/neovim.sh

# Activate Base16-Shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
base16_tomorrow-night

# Activate zsh
chsh -s /bin/zsh
