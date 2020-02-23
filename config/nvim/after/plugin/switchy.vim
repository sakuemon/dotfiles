command! Switch call switchy#switch('split', 'sbuf')
nnoremap <silent> as :call switchy#switch('split', 'split')<CR>
nnoremap <silent> av :call switchy#switch('vsplit', 'vsplit')<CR>
nnoremap <silent> at :call switchy#switch('tabedit', 'tabedit')<CR>
