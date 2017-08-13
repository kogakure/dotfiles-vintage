![Maintenance](https://img.shields.io/maintenance/yes/2017.svg)

# Dotfiles

These are my Dotfiles, a collection of [Vim](http://www.vim.org/), [tmux](https://tmux.github.io/), [zsh](http://zsh.sourceforge.net/), [Hammerspoon](http://www.hammerspoon.org/), and configurations of all kinds of different tools.

## Initial Setup and Installation

Clone the dotfiles repository to your computer. Symbolic links will be created to reference it from your home directory.

```bash
git clone git@github.com:kogakure/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh
```

`install.sh` will begin with downloading [Homebrew](http://brew.sh/) and [oh-my-zsh](http://ohmyz.sh/). It will install all symbolic links into your home directory. Every file with a `.symlink` extension will be symlinked to the home directory with a `.` in front of it. As an example, it will link `vimrc.symlink` to `~/.vimrc`. Then, it will install, download or copy all necessary files for Homebrew, Homebrew Cask, nvm, Ruby and tmux. It will also set Mac OS X defaults.
