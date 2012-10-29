setlocal omnifunc=phpcomplete#CompletePHP
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab
setlocal autoindent
setlocal smartindent

source $HOME/.vim/ftplugin/phpfolding.vim
let php_sql_query=1     " highlight SQL
let php_htmlInStrings=1 " highlight HTML TAG
let php_folding=2       " folding all {}
setlocal foldmethod=syntax
setlocal tags=./tags;
setlocal dictionary=$HOME/.vim/dicts/PHP.dict

" KEYBINDS
"nmap ,l : call PHPLint()<CR>
"nmap <F4> : call PHPTags()<CR>

" FUNCTIONS
"function PHPLint()
"    let result = system( &ft . ' -l ' . bufname(**))
"    echo result
"endfunction

"function PHPTags()
"    :!ctags -f %:p:h/tags
"    \ --langmap="php:+.inc"
"    \-h ".php.inc" -R --totals=yes
"    \ --tag-relative=yes --PHP-kinds=+cf-v %:p:h<CR>
"endfunction

