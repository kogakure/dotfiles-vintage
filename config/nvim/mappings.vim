" *** *** *** Mappings *** *** ***
" ********************************

" Command mode
nnoremap <space> :

" Quick toggle between buffers
noremap <leader>j :b#<CR>

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Add semicolon or comma to the end of the line
nnoremap <leader>; A;<ESC>
nnoremap <leader>. A,<ESC>

" Delete last character of line
nnoremap <leader>x $x

" Open .vimrc in a new buffer, reload .vimrc
nnoremap <leader>vv :e $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Delete all buffers
nnoremap <silent> <leader>da :exec "1," . bufnr('$') . "bd"<CR>

" Mapping for easier OmniCompletion
inoremap <C-]> <C-X><C-]>
inoremap <C-F> <C-X><C-F>
inoremap <C-D> <C-X><C-D>
inoremap <C-L> <C-X><C-L>
inoremap <C-O> <C-X><C-O>

" Set spell checker to `s`
" zg (good), zG (good temp), zw (wrong), zW (wrong temp)
nnoremap <silent> <leader>s :set spell!<CR>

" Switch of highlighting with ',h'
nnoremap <silent> <leader>h :nohlsearch<CR>
nnoremap <leader>th :call ToggleSearchHighlighting()<CR>

" Toogle `set list`
nnoremap <leader>l :set list!<CR>

" Indent the whole source code
nnoremap <leader>ff gg=G

" Change marks mapping (ma)
nnoremap ' `
nnoremap ` '

" Visuall select of just pasted stuff
nnoremap gp `[v`]
nnoremap gy `[v`]y

" Open a quickfix window for the last search
" nnoremap <silent> <leader>? :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

" Faster linewise scrolling
noremap <C-e> 3<C-e>
noremap <C-y> 3<C-y>

" Unmapping of arrow keys
" noremap <down> <Nop>
" noremap <left> <Nop>
" noremap <right> <Nop>
" noremap <up> <Nop>
" inoremap <down> <Nop>
" inoremap <left> <Nop>
" inoremap <right> <Nop>
" inoremap <up> <Nop>
" vnoremap <down> <Nop>
" vnoremap <left> <Nop>
" vnoremap <right> <Nop>
" vnoremap <up> <Nop>

" Keep the window centered
noremap G Gzzzv
noremap n nzzzv
noremap N Nzzzv
noremap } }zzzv
noremap { {zzzv

" Close all buffers
nnoremap XX :qa<CR>

" Add lines in NORMAL Mode
nnoremap gn o<ESC>k
nnoremap gN O<ESC>j

" Change to the folder of the current file
" nnoremap <silent> <leader>ccc :cd %:p:h<CR>:pwd<CR>

" Quickfix Window
" nnoremap <leader>qo :copen<CR>
" nnoremap <leader>qc :cclose<CR>

" Session Management
" nnoremap <leader>so :OpenSession
" nnoremap <leader>ss :SaveSession
" nnoremap <leader>sd :DeleteSession<CR>
" nnoremap <leader>sx :CloseSession<CR>

" Navigation of buffers
nnoremap <leader>n :bnext<CR>
nnoremap <leader>p :bprev<CR>

" Toggle between wrap and nowrap
" nnoremap <leader>tw :call ToggleWrap()<CR>

" Create ctags
" nnoremap <leader>c :silent! !ctags<cr>:redraw!<cr>

" Escape/Unescape of HTML entities
" noremap <leader>he :call HtmlEscape()<CR>
" noremap <leader>hue :call HtmlUnEscape()<CR>

" Exit INSERT MODE with 'jk'
" inoremap jk <ESC>

" Simulate CTRL-Q of TextMate for 'Reformat Paragraph'
" nnoremap <leader>q gqip

" Simulate CTRL-ALT-Q of TextMate for 'Unwrap Paragraph'
" nnoremap <leader>qq vipJ

" Replace all Tabs with Whitespace
" noremap <silent> <leader>rt :retab<CR>

" Vsplits/Splits enlarge/shrink
" noremap <kPlus> <C-w>+
" noremap <kMinus> <C-w>-
" noremap <kDivide> <C-w><
" noremap <kMultiply> <C-w>>

" Easier split navigation
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" if has('nvim')
"   " Hack to get C-h working in NeoVim
"   nmap <BS> <C-W>h
" endif

" Indentation in VISUAL Mode like in INSERT Mode
" vnoremap > >gv
" vnoremap < <gv
" vnoremap <Tab> >gv
" vnoremap <S-Tab> <gv

" Open for Markdown in iA Writer
" nnoremap <leader>m :silent !open -a iA\ Writer.app '%:p'<CR>

" Extended TextObjects
" http://connermcd.com/blog/2012/10/01/extending-vim%27s-text-objects/
for [key, value] in items(textobject_pairs)
  exe "nnoremap ci".key." T".key."ct".value
  exe "nnoremap ca".key." F".key."cf".value
  exe "nnoremap vi".key." T".key."vt".value
  exe "nnoremap va".key." F".key."vf".value
  exe "nnoremap di".key." T".key."dt".value
  exe "nnoremap da".key." F".key."df".value
  exe "nnoremap yi".key." T".key."yt".value
  exe "nnoremap ya".key." F".key."yf".value
endfor
