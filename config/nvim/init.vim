" Setup {{{
" *********************************************************

if &compatible
  set nocompatible
endif

filetype off

let g:python_host_prog=$HOME.'/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog=$HOME.'/.pyenv/versions/neovim3/bin/python'

" }}}

" Imports {{{
" *********************************************************

runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif

runtime ./maps.vim

"}}}

" Global Settings {{{
" *********************************************************

" Default shell
set shell=/bin/zsh

" Search for all files in all subfolders
set path+=**

" Encoding to UTF-8
scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8

filetype plugin indent on

" Syntax highlighting
syntax on

" Colorscheme (Base16 color)
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Make background transparent for many things
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
hi! LineNr ctermfg=NONE guibg=NONE
hi! SignColumn ctermfg=NONE guibg=NONE
hi! StatusLine guifg=#16252b guibg=#6699CC
hi! StatusLineNC guifg=#16252b guibg=#16252b

" Custom Colors
highlight Conceal cterm=NONE ctermbg=NONE ctermfg=darkred
highlight SpellBad cterm=underline ctermfg=white ctermbg=red
highlight SpellCap cterm=underline
highlight SpellLocal cterm=underline
highlight SpellRare cterm=underline
highlight Comment cterm=italic

" 256 colors
set t_Co=256

" Set <leader> to `,` instead to `\`
let mapleader=","

" <loacalleader> to `+`
let maplocalleader="+"

" Backups
set undodir=$HOME/.vim/tmp/undo//
set backupdir=$HOME/.vim/tmp/backup//
set directory=$HOME/.vim/tmp/swap//
set backupskip=/tmp/*,/private/tmp/*
set nobackup
set nowritebackup
set noswapfile

" Automatic save at file switch
set autowrite

" Update buffer automatically, when changed by extern
set autoread

" No line break
set nowrap

" Don’t refresh while executing a macro
set lazyredraw

" Show partially completed commands
set showcmd

" Show the mode
set showmode

" Search on the oposite of the file when reaching end/beginning
set wrapscan

" Start highlighting search results while typing
set incsearch

" Show line breaks
set showbreak=↪

" Ignore case when searching (unless using capital letters)
set ignorecase
set smartcase

" use forward slash
set shellslash

" Highlight search results
set hlsearch

" Height of command line
set ch=1

" Don’t break lines
set textwidth=0

" Show full tag when autocompleting
set showfulltag

" Which characters to use for statuslines etc.
set fillchars=diff:⣿,vert:│

" Show invisibles (tabs, line endings etc.)
" set list

" Choose symbols to show invisibles
set listchars=tab:▸\ ,eol:¬,trail:·,nbsp:.,extends:❯,precedes:❮,space:·

" No beeping
set visualbell

" Line numbering
set number
set relativenumber

" Intuitive backspacing
set backspace=indent,eol,start

" Use hidden buffers
set hidden

" Add dashes to words
set iskeyword+=-

" Don't delete the word, but put a $ to the end till exit the mode
set cpoptions+=$

" Fast terminal connection
set ttyfast

" Set title of the window
set title

" Show status line
set laststatus=2

" Hightlight matching paar (brackets etc.)
set showmatch

" Welcome screen (e. g. no welcome message)
set shortmess=caoOtI

" always show signcolumns
set signcolumn=yes

" Increase line-height
set linespace=2

" Show line and row of the cursor
set ruler

" Tabs and indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set autoindent
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
set copyindent
set shiftround

" Conceal
set conceallevel=0

" Update time (Default: 4 seconds)
set updatetime=300

" Don’t syntax highlight lines longer than 800 characters
set synmaxcol=800

" Timeout for waiting after pressing <leader>
set timeoutlen=500

" Fold the code
set foldenable

" Don’t show the foldcolumn
set foldcolumn=0

" Default fold is marker
set foldmethod=marker
set foldlevelstart=20

" Split the window below and right of the current window
set splitbelow
set splitright

" Hide mouse cursor while typing
set mousehide

" Keep 3 lines context above and below
set scrolloff=3

" Enable positioning of cursor where no character is
set virtualedit=all

" Highlight line with cursor
set cursorline

" Complete all buffers
" set complete=.,w,b,u,t,i,kspell
set complete=.,w,b,u,t,kspell
set completeopt=longest,menuone,preview

" Better command line completion
set wildmenu

" Complete files like a shell
set wildmode=list:longest,list:full

" Ignore stuff
set wildignore+=.DS_Store,Icon
set wildignore+=*.dmg
set wildignore+=*.doc,*.docx,*.xls,*.xlsx,*.ppt,*.pptx,*.gsheet
set wildignore+=*.gem,gems/**
set wildignore+=*.mp4,*.mov,*.m4v,*.mp3
set wildignore+=*.pages
set wildignore+=*.pdf,*.graffle
set wildignore+=*.png,*.gif,*.jpeg,*.jpg,*.tiff,*.psd
set wildignore+=*.py[co]
set wildignore+=*.sqlite3,*.db
set wildignore+=*.sw?
set wildignore+=*.zip,*.tar,*.tar.gz
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.so
set wildignore+=*/build/**,*/dist/**
set wildignore+=*/node_modules/**
set wildignore+=*/tmp/**
set wildignore+=*/vendor/**

" Spell checker language to German
" To clean the custom files :runtime spell/cleanadd.vim
set spelllang=de_de,en_us
set spellfile+="~/.vim/spell/de.utf-8.add" " (1)zg, (1)zw
set spellfile+="~/.vim/spell/en.utf-8.add" " 2zg, 2zw

" Custom Dictionaries (<C-x> <C-k>)
" http://ftp.vim.org/vim/runtime/spell/
set dictionary+="~/.vim/dictionary/de_user.txt"
set dictionary+="~/.vim/dictionary/de_neu.txt"
set dictionary+="~/.vim/dictionary/en_us.txt"

" Custom Thesauri (Synonyms) (<C-x> <C-t>)
set thesaurus+="~/.vim/thesaurus/de_user.txt"
set thesaurus+="~/.vim/thesaurus/de_openthesaurus.txt"

set complete+=kspell

" Extended TextObjects
" http://connermcd.com/blog/2012/10/01/extending-vim%27s-text-objects/
let pairs = { ":" : ":",
      \ "." : ".",
      \ "<bar>" : "<bar>",
      \ "*" : "*",
      \ "-" : "-",
      \ "_" : "_" }

" }}}

" File Types {{{
" *********************************************************

" JavaScript
au BufNewFile,BufRead *.es6 setf javascript

" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact

" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

"}}}

lua << EOF
local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- Keymaps
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
end

local lsp_installer = require('nvim-lsp-installer')

lsp_installer.on_server_ready(function(server) 
  local opts = {}

  server:setup(opts)

  lsp_installer.settings({
  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗"
      }
    }
  })
end)

EOF

" vim: set foldmethod=marker foldlevel=0:"

