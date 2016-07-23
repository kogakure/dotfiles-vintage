" after/plugin/tabular_extra.vim provides extra :Tabularize commands

if !exists(':Tabularize')
    finish
endif

" Line wrapping einschalten
let s:save_cpo = &cpo
set cpo&vim

AddTabularPattern! asterisk /*/l1
AddTabularPipeline! remove_leading_spaces /^ /
            \ map(a:lines, "substitute(v:val, '^ *', '', '')")
AddTabularPattern! comma_1 /^[^,]*\zs,/r0c1l0
AddTabularPattern! quote_1 /^[^"]*\zs"/l1c0l0

" Reset old value of line wrapping
let &cpo = s:save_cpo
unlet s:save_cpo
