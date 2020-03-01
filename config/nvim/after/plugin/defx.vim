"noremap [Defx] <Nop>
"nmap <Space>f [Defx]
"nnoremap <silent>[Defx]r :<C-u>Defx<CR>
"nnoremap <silent>[Defx]f :<C-u>Defx `expand('%:p:h')`<CR>

call defx#custom#option('_', {
    \ 'columns': 'indent:git:icons:filename',
    \ 'show_ignored_files': 1,
    \ })

call defx#custom#option('time', {'format': '%m %d %H:%M'})


let g:defx_icons_enable_syntax_highlight = 1
let g:defx_icons_column_length = 2

