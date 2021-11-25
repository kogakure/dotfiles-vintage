if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

" Check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
  if executable('curl')
    let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
    if v:shell_error
      echom "Error downloading vim-plug. Please install it manually.\n"
      exit
    endif
  else
    echom "vim-plug not installed. Please install it manually or install curl.\n"
    exit
  endif
endif

call plug#begin()

" Git
Plug 'tpope/vim-fugitive' " A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-rhubarb' " GitHub extension for fugitive.vim


Plug 'chriskempson/base16-vim' " Base16 for Vim
Plug 'cohama/lexima.vim' " Auto close parentheses and repeat by dot dot dot…

if has ("nvim")
  " LSP
  Plug 'neovim/nvim-lspconfig' " Quickstart configurations for the Nvim LSP client
  Plug 'williamboman/nvim-lsp-installer' " Seamlessly manage LSP servers locally
endif


call plug#end()
