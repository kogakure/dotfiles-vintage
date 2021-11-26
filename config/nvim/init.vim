" *** *** *** Setup *** *** ***
" *****************************

if exists('g:vscode')
  source $HOME/.vimrc.vscode
else
  let g:python_host_prog=$HOME.'/.pyenv/versions/neovim2/bin/python'
  let g:python3_host_prog=$HOME.'/.pyenv/versions/neovim3/bin/python'
  
  " *** *** *** Imports *** *** ***
  " *******************************

  runtime ./plug.vim
  runtime ./settings.vim
  runtime ./colors.vim
  runtime ./mappings.vim
  runtime ./functions.vim
  runtime ./autocmd.vim


endif


