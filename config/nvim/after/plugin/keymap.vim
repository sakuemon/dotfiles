" asyncrun
noremap [Run] <Nop>
nmap <Space>r [Run]

" fzf
noremap [Fzf] <Nop>
nmap <Space>z [Fzf]
nnoremap <silent>[Fzf]f : <C-u>Files<CR>
nnoremap <silent>[Fzf]b : <C-u>Buffers<CR>

" defx
noremap [Defx] <Nop>
nmap <Space>f [Defx]
nnoremap <silent>[Defx]r :<C-u>Defx<CR>
nnoremap <silent>[Defx]f :<C-u>Defx `expand('%:p:h')`<CR>

" quickfix
noremap [QFix] <Nop>
nmap <Space>q [QFix]
nnoremap [QFix]j : <C-u>cnext<CR>
nnoremap [QFix]k : <C-u>cprevious<CR>
nnoremap [QFix]l : <C-u>clast<CR>
nnoremap [QFix]f : <C-u>cfirst<CR>
nnoremap [QFix]q : <C-u>cclose<CR>
nnoremap [QFix]o : <C-u>copen<CR>

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

