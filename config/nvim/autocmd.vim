  " *** *** *** Auto Commands *** *** ***
  " *************************************

  " Colorscheme changes
  function! s:after_colorscheme()
    highlight clear SpellBad
    highlight clear SpellCap
    highlight clear SpellLocal
    highlight clear SpellRare

    highlight SpellBad cterm=underline ctermfg=white ctermbg=red
    highlight SpellCap cterm=underline
    highlight SpellLocal cterm=underline
    highlight SpellRare cterm=underline
  endfunction

  " coc.nvim color changes
  hi! link CocErrorSign WarningMsg
  hi! link CocWarningSign Number
  hi! link CocInfoSign Type

  " Show VCS conflict marker
  match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

  " Delete Fugitive buffer after leaving it
  autocmd BufReadPost fugitive://* set bufhidden=delete

  augroup after_colorscheme
    autocmd!
    autocmd ColorScheme * call s:after_colorscheme()
  augroup END

  " Remember cursor position
  augroup line_return
    autocmd!
    autocmd BufReadPost *
          \ if line("'\"") > 1 && line("'\"") <= line("$") |
          \   exe "normal! g`\"" |
          \ endif
  augroup END
