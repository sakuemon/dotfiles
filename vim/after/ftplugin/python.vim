setlocal tabstop=4           " タブ幅
setlocal softtabstop=4       " タブキーを押したときに挿入される幅。0=tabstopの値。
setlocal shiftwidth=4        " インデント幅
setlocal smarttab
setlocal expandtab           " タブを空白に
setlocal autoindent          " 改行時、自動インデント
setlocal smartindent

setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class
setlocal omnifunc=pythoncomplete#Complete

setlocal foldmethod=syntax
setlocal tags=./tags;
let g:pydiction_location="$HOME/.vim/ftplugin/pydiction/complete-dict"
source $HOME/.vim/ftplugin/jpythonfold.vim
