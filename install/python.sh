 #!/bin/sh

# Install Pyenv
 curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

# Activate Pyenv
export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

pyenv install 2.7.11
pyenv install 3.4.4

pyenv virtualenv 2.7.11 neovim2
pyenv virtualenv 3.4.4 neovim3

pyenv activate neovim2
pip2 install neovim

pyenv activate neovim3
pip3 install neovim
