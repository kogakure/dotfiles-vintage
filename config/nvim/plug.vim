  " *** *** *** Plugins *** *** ***
  " *******************************
  
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

  call plug#begin('~/.vim/plugged')

  " Theme
  Plug 'chriskempson/base16-vim' " Base16 for Vim

  " LSP
  Plug 'neovim/nvim-lspconfig' " Quickstart configurations for the Nvim LSP client       
  Plug 'williamboman/nvim-lsp-installer' " Install and manage LSP servers

  " *** *** OLD *** ***

  " Snippet support
  " Plug 'SirVer/ultisnips'
  " Plug 'honza/vim-snippets'

  " Intellisense Engine
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Print function signatures in echo area
  " Plug 'Shougo/echodoc.vim'


  " Customized vim status lline
  " Plug 'vim-airline/vim-airline'
  " Plug 'vim-airline/vim-airline-themes'

  " Argumentative aids with manipulating and moving between function arguments.
  " Plug 'PeterRincker/vim-argumentative'

  " Emmet
  " Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript', 'javascript.jsx', 'typescript']}

  " GitHub Line
  " Plug 'ruanyl/vim-gh-line'

  " Better whitespace highlighting for Vim
  " Plug 'ntpeters/vim-better-whitespace'

  " Escape/Unecape HTML entities
  " ➜ <leader>he <leader>hu
  " Plug 'skwp/vim-html-escape', { 'on': ['HtmlEscape', 'HtmlUnEscape'] }

  " Multiple cursors
  " ➜ <C-n>
  " Plug 'terryma/vim-multiple-cursors'

  " Show Unicode character names, vim digraphs (<C-K>), emoji codes, etc.
  " ➜ ga
  " Plug 'tpope/vim-characterize'

  " Comment stuff out.
  " ➜ gcc (comment out line)
  " ➜ gc (comment out target in motion, e. g. gcap)
  Plug 'tpope/vim-commentary'

  " Enable repeating supported plugins maps with '.'
  " Plug 'tpope/vim-repeat'

  " Increment date, times, and more
  " ➜ <C-A> <C-X>
  " Plug 'tpope/vim-speeddating'

  " Manipulate surroundings (parenteses, brackets, quotes, etc.)
  " Plug 'tpope/vim-surround'

  " Increase columns
  " :I or :II etc.
  " Plug 'vim-scripts/VisIncr', { 'on': ['I', 'IR'] }

  " Text filtering and alignment (fork)
  " Plug 'kogakure/tabular'

  " Git Wrapper
  " ➜ :G…
  " Plug 'tpope/vim-fugitive'

  " Vim Git runtime files
  " Plug 'tpope/vim-git', { 'for': ['git', 'gitcommit', 'gitconfig', 'gitrebase', 'gitsendemail'] }

  " Show a git diff gutter
  " Plug 'airblade/vim-gitgutter'

  " AutoSave (disabled by default)
  " ➜ :AutoSaveToggle
  " Plug '907th/vim-auto-save'

  " Miscellaneous auto-load Vim scripts
  " Plug 'xolox/vim-misc' | Plug 'xolox/vim-session', { 'on': ['OpenSession', 'SaveSession', 'DelteSession', 'CloseSession'] }

  " Speed up Vim by updating folds only when called-for
  " Plug 'Konfekt/FastFold'

  " Pandoc integration & syntax
  " Plug 'vim-pandoc/vim-pandoc'
  " Plug 'vim-pandoc/vim-pandoc-syntax'

  " Browse tags
  " ➜ :TagbarToggle
  " Plug 'majutsushi/tagbar'

  " Allow opening a file on a specific line (vim index.html:20)
  " Plug 'bogado/file-line'

  " Full path fuzzy file, buffer, mru, tag, … finder
  " Plug 'ctrlpvim/ctrlp.vim'
  " Plug 'sgur/ctrlp-extensions.vim'

  " A command-line fuzzy finder
  " Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  " Plug 'junegunn/fzf.vim'

  " Extend netrw
  " Plug 'tpope/vim-vinegar'

  " EditorConfig
  " Plug 'editorconfig/editorconfig-vim'

  " Vim motion on speed
  " ➜ ,,motion command
  " Plug 'Lokaltog/vim-easymotion'

  " Show 'Match 123 of 456'
  " Plug 'henrik/vim-indexed-search'

  " Visual select something and press * to search it
  " Plug 'nelstrom/vim-visual-star-search'

  " Easily search for, subsitute, and abbreviate multiple variants of a word
  " ➜ :Abolish! anomol{y,ies} anomal{}
  " Plug 'tpope/vim-abolish'

  " Bookmarks
  " Plug 'MattesGroeger/vim-bookmarks'

  " A collection of language packs for Vim.
  " Plug 'sheerun/vim-polyglot'

  " Extend % matching for HTML, LaTex and other languages
  " Plug 'tmhedberg/matchit'

  " *** JavaScript ***
  " Plug 'othree/javascript-libraries-syntax.vim',  { 'for': 'javascript' }
  " Plug 'othree/yajs.vim',                         { 'for': 'javascript' }
  " Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

  " *** CSS ***
  " Color name highlighting
  " Plug 'ap/vim-css-color'

  " *** Ruby & Rails ***
  " Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }

  " *** PHP ***
  " Plug 'shawncplus/phpcomplete.vim'
  " Plug 'vim-scripts/PHP-correct-Indenting'

  " Interact with tmux
  " Plug 'benmills/vimux'
  " Plug 'christoomey/vim-tmux-navigator'

  " Text Objects
  " Plug 'glts/vim-textobj-comment'
  " Plug 'jceb/vim-textobj-uri'
  " Plug 'kana/vim-textobj-datetime'
  " Plug 'kana/vim-textobj-line'
  " Plug 'kana/vim-textobj-user'
  " Plug 'nelstrom/vim-textobj-rubyblock'
  " Plug 'whatyouhide/vim-textobj-xmlattr'

  " Add plugins to &runtimepath
  call plug#end()
