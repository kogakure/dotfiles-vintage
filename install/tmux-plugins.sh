#!/bin/sh

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install tmux plugins
~/.tmux/plugins/tpm/bin/install_plugins
