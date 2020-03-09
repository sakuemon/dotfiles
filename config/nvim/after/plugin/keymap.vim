" asyncrun
noremap [Run] <Nop>
nmap <Space>r [Run]

" fzf
noremap [fzf] <Nop>
nmap <Space>f [fzf]
nnoremap <silent>[fzf]f : <C-u>Files<CR>
nnoremap <silent>[fzf]b : <C-u>Buffers<CR>
nnoremap         [fzf]m : <C-u>Rg<Space>

" defx
noremap [Defx] <Nop>
nmap <Space>z [Defx]
nnoremap <silent>[Defx]r :<C-u>Defx<CR>
nnoremap <silent>[Defx]f :<C-u>Defx `expand('%:p:h')`<CR>

" quickfix
nnoremap <C-q><C-j> : <C-u>cnext<CR>
nnoremap <C-q><C-k> : <C-u>cprevious<CR>
nnoremap <C-q><C-o> : <C-u>copen<CR>
nnoremap <C-q><C-q> : <C-u>cclose<CR>


" switchy
command! Switch call switchy#switch('split', 'sbuf')
noremap [Swtch] <Nop>
nmap <Space>a [Switch]
nnoremap [Switch]e :call switchy#switch('edit', 'sbuf')<CR>
nnoremap [Switch]s :call switchy#switch('split', 'sbuf')<CR>
nnoremap [Switch]v :call switchy#switch('vsplit', 'sbuf')<CR>
nnoremap [Switch]t :call switchy#switch('tabedit', 'sbuf')<CR>

" tmux
nnoremap <silent> <C-w>h :TmuxNavigateLeft<cr>
nnoremap <silent> <C-w>j :TmuxNavigateDown<cr>
nnoremap <silent> <C-w>k :TmuxNavigateUp<cr>
nnoremap <silent> <C-w>l :TmuxNavigateRight<cr>
nnoremap <silent> <C-w>\\ :TmuxNavigatePrevious<cr>

