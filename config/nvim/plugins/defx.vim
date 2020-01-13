nnoremap <silent><C-f> :<C-u>Defx<CR>
"nnoremap <silent><C-f> :<C-u>Defx -split=vertical -winwidth=40 -direction=topleft<CR>

call defx#custom#option('time', {'format': '%m %d %H:%M'})

call defx#custom#option('_', {
    \ 'columns': 'git:icons:size:time:filename',
    \ 'show_ignored_files': 0,
    \ })

let g:defx_icons_enable_syntax_highlight = 1
let g:defx_icons_column_length = 2

