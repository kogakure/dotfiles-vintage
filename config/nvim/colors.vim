  " *** *** *** Colors *** *** ***
  " ******************************

  " Colorscheme (Base16 color)
  if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
  endif

if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
endif

  " Make background transparent for many things
  " hi! Normal ctermbg=NONE guibg=NONE
  " hi! NonText ctermbg=NONE guibg=NONE
  " hi! LineNr ctermfg=NONE guibg=NONE
  " hi! SignColumn ctermfg=NONE guibg=NONE
  " hi! StatusLine guifg=#16252b guibg=#6699CC
  " hi! StatusLineNC guifg=#16252b guibg=#16252b

  " Custom Colors
  " highlight Conceal cterm=NONE ctermbg=NONE ctermfg=darkred
  " highlight SpellBad cterm=underline ctermfg=white ctermbg=red
  " highlight SpellCap cterm=underline
  " highlight SpellLocal cterm=underline
  " highlight SpellRare cterm=underline
  " highlight Comment cterm=italic

  " 256 colors
  " set t_Co=256
