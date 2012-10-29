setlocal tabstop=4
setlocal softtabstop=0
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
setlocal smartindent

let java_highlight_all=1
let java_highlight_debua=1

setlocal tags=tags;
setlocal tags+=~/tags/java6
setlocal tags+=~/tags/android

setlocal omnifunc=javacomplete#Complete

" plugin {{{
let g:SrcExpl_updateTagsCmd="ctags -a --sort=foldcase -R --links=no --languages=java"
" }}}

