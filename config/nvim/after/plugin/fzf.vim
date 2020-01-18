set rtp+=/usr/local/bin/fzf

let g:fzf_bufferes_jump=1

noremap [Fzf] <Nop>
nmap <Space>f [Fzf]
nnoremap [Fzf]f : <C-u>Files<CR>
nnoremap [Fzf]b : <C-u>Buffers<CR>
