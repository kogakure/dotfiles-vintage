 #!/bin/sh

mkdir -p $HOME/.config

if [ ! -L $HOME/.config/nvim ]; then
  ln -s $HOME/.vim $HOME/.config/nvim
fi

if [ ! -L $HOME/.config/nvim/init.vim ]; then
  ln -s $HOME/.vimrc $HOME/.config/nvim/init.vim
fi
