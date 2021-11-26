  " *** *** *** Functions *** *** ***
  " +********************************

  " Toggle between soft wrap and no wrap
  function! ToggleWrap()
    if &wrap
      echo "Wrap OFF"
      set nowrap
      set nolinebreak
      set list
      set textwidth=0
      set virtualedit=all
      set colorcolumn=
      silent! nunmap <buffer> <Up>
      silent! nunmap <buffer> <Down>
      silent! nunmap <buffer> <Home>
      silent! nunmap <buffer> <End>
      silent! iunmap <buffer> <Up>
      silent! iunmap <buffer> <Down>
      silent! iunmap <buffer> <Home>
      silent! iunmap <buffer> <End>
    else
      echo "Wrap ON"
      set wrap
      set linebreak
      set nolist
      set textwidth=0
      set virtualedit=
      set colorcolumn=
      setlocal display+=lastline
      noremap  <buffer> <silent> <Up>   gk
      noremap  <buffer> <silent> <Down> gj
      noremap  <buffer> <silent> <Home> g<Home>
      noremap  <buffer> <silent> <End>  g<End>
      inoremap <buffer> <silent> <Up>   <C-o>gk
      inoremap <buffer> <silent> <Down> <C-o>gj
      inoremap <buffer> <silent> <Home> <C-o>g<Home>
      inoremap <buffer> <silent> <End>  <C-o>g<End>
    endif
  endfunction

  " Toggle between search highlighting and no highlight
  function! ToggleSearchHighlighting()
    if &hlsearch
      set nohlsearch
    else
      set hlsearch
    endif
  endfunction

  " for tmux to automatically set paste and nopaste mode at the time pasting
  " (as happens in VIM UI)
  function! WrapForTmux(s)
    if !exists('$TMUX')
      return a:s
    endif

    let tmux_start = "\<Esc>Ptmux;"
    let tmux_end = "\<Esc>\\"

    return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
  endfunction

  let &t_SI .= WrapForTmux("\<Esc>[?2004h")
  let &t_EI .= WrapForTmux("\<Esc>[?2004l")

  function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
  endfunction

  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

  " Escape/unescape HTML
  function! HtmlEscape()
    silent s/&/\&amp;/eg
    silent s/</\&lt;/eg
    silent s/>/\&gt;/eg
  endfunction

  function! HtmlUnEscape()
    silent s/&lt;/</eg
    silent s/&gt;/>/eg
    silent s/&amp;/\&/eg
  endfunction

  " Show syntax highlighting groups for word under cursor
  " Useful when editing colorschemes.
  function! <SID>SynStack()
    if !exists("*synstack")
      return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
  endfunc

  nmap <leader><leader>p :call <SID>SynStack()<CR>

  " Write file, even if the folders don’t exist
  function! HardcoreWrite()
    execute '! mkdir -p %:h'
    execute 'write'
  endfunction

  command! -register HardcoreWrite silent! call HardcoreWrite() | redraw!

  " Automatic Tabular.vim with the (|)
  " function! s:align()
  "   let p = '^\s*|\s.*\s|\s*$'
  "   if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
  "     let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
  "     let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
  "     Tabularize/|/l1
  "     normal! 0
  "     call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  "   endif
  " endfunction
