set rtp+=/usr/local/bin/fzf

let g:fzf_bufferes_jump=1

noremap [Fzf] <Nop>
nmap <Space>z [Fzf]
nnoremap <silent>[Fzf]f : <C-u>Files<CR>
nnoremap <silent>[Fzf]b : <C-u>Buffers<CR>
