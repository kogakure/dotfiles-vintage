" *** *** *** Settings *** *** ***
" ********************************

if &compatible
  set nocompatible
endif

" MacOS specific settings
if has("unix")
  let s:uname = system("uname -s")
  if s:uname == "Darwin\n"
    " System clipboard
    set clipboard+=unnamedplus
  endif
endif

filetype off

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

" Set <leader> to `,` instead to `\`
let mapleader=","

" <loacalleader> to `+`
let maplocalleader="+"

" Backups
" set undodir=$HOME/.vim/tmp/undo//
" set backupdir=$HOME/.vim/tmp/backup//
" set directory=$HOME/.vim/tmp/swap//
set nobackup
set nowritebackup
set noswapfile
set backupskip=/tmp/*,/private/tmp/*

" Create ctags
" command! MakeTags !ctags .

" Switch of modelines (it is a risk for security)
set modelines=0

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
set cmdheight=1

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

" Persistent (G)undo files between sessions
" set undofile
" set history=1000
" set undolevels=100

" Update time (Default: 4 seconds)
set updatetime=300

" Don’t syntax highlight lines longer than 800 characters
set synmaxcol=800

" Timeout for waiting after pressing <leader>
set timeoutlen=500

" Fold the code
" set foldenable

" Don’t show the foldcolumn
set foldcolumn=0

" Default fold is marker
set foldmethod=marker
set foldlevelstart=20

" Split the window below and right of the current window
set splitbelow
set splitright

" Active mouse in terminal mode
set mouse=a

" Hide mouse cursor while typing
set mousehide

" Keep 3 lines context above and below
set scrolloff=10

" Enable positioning of cursor where no character is
set virtualedit=all

" Highlight line with cursor
set cursorline

" Complete all buffers
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
" set spelllang=de_de,en_us
" set spellfile+="~/.vim/spell/de.utf-8.add" " (1)zg, (1)zw
" set spellfile+="~/.vim/spell/en.utf-8.add" " 2zg, 2zw

" Custom Dictionaries (<C-x> <C-k>)
" http://ftp.vim.org/vim/runtime/spell/
" set dictionary+="~/.vim/dictionary/de_user.txt"
" set dictionary+="~/.vim/dictionary/de_neu.txt"
" set dictionary+="~/.vim/dictionary/en_us.txt"

" Custom Thesauri (Synonyms) (<C-x> <C-t>)
" set thesaurus+="~/.vim/thesaurus/de_user.txt"
" set thesaurus+="~/.vim/thesaurus/de_openthesaurus.txt"

" Session Management
" let g:session_directory = "~/.vim/sessions"
" let g:session_autoload = "no"
" let g:session_autosave = "no"
" let g:session_command_aliases = 1

" Netrd tweaks
" let g:netrw_banner = 0
" let g:netrw_altv = 1
" let g:netrw_list_hide=netrw_gitignore#Hide()
" let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
" let g:netrw_liststyle = 3

" Extended TextObjects
" http://connermcd.com/blog/2012/10/01/extending-vim%27s-text-objects/
let textobject_pairs = { ":" : ":",
      \ "." : ".",
      \ "<bar>" : "<bar>",
      \ "*" : "*",
      \ "-" : "-",
      \ "_" : "_" }

" Close HTML elemente with XHTML rules
" let xml_use_xhtml = 1

" Better syntax hightlighting for Python
" let python_highlight_all = 1

" Changing cursor shape per mode
" 1 or 0 -> blinking block
" 2 -> solid block
" 3 -> blinking underscore
" 4 -> solid underscore
" if exists('$TMUX')
"   " tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
"   let &t_SI .= "\<Esc>Ptmux;\<Esc>\<Esc>[4 q\<Esc>\\"
"   let &t_EI .= "\<Esc>Ptmux;\<Esc>\<Esc>[2 q\<Esc>\\"
"   autocmd VimLeave * silent !echo -ne "\033Ptmux;\033\033[0 q\033\\"
" else
"   let &t_SI .= "\<Esc>[4 q"
"   let &t_EI .= "\<Esc>[2 q"
"   autocmd VimLeave * silent !echo -ne "\033[0 q"
" endif
