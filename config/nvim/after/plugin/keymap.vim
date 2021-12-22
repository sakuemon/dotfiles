" noh, clean anzu-status
nmap <Esc><Esc> <Plug>(anzu-clear-search-status):nohl<CR>

" asyncrun
noremap [Run] <Nop>
nmap <Space>r [Run]

" choosewin
nmap - <Plug>(choosewin)

" fzf
noremap [fzf] <Nop>
nmap <Space>f [fzf]
nnoremap <silent>[fzf]f : <C-u>CocCommand fzf-preview.DirectoryFiles<CR>
nnoremap <silent>[fzf]b : <C-u>CocCommand fzf-preview.AllBuffers<CR>
nnoremap         [fzf]m : <C-u>CocCommand fzf-preview.ProjectGrep<Space>

" gina
noremap [gina] <Nop>
nmap <Space>g [gina]
nnoremap <silent>[gina]s :Gina status<CR>
nnoremap <silent>[gina]b :Gina browse :<CR>
vnoremap <silent>[gina]b :Gina browse :<CR>
nnoremap <silent>[gina]B :Gina blame<CR>
augroup vimrc
	autocmd FileType gina-status nnoremap <buffer> q :<C-u>close<CR>
	autocmd FileType diff        nnoremap <buffer> q :<C-u>close<CR>
augroup END

" hop
nnoremap <silent> <Leader><Leader>w :HopWord<CR>
nnoremap <silent> <leader><Leader>f :HopChar1AC<CR>
nnoremap <silent> <leader><Leader>F :HopChar1BC<CR>


" quickfix
nnoremap <C-q><C-j> : <C-u>cnext<CR>
nnoremap <C-q><C-k> : <C-u>cprevious<CR>
nnoremap <C-q><C-o> : <C-u>copen<CR>
nnoremap <C-q><C-q> : <C-u>cclose<CR>

" quickhl
nmap <Space>h <Plug>(quickhl-manual-this)
xmap <Space>h <Plug>(quickhl-manual-this)

nmap <Space>c <Plug>(quickhl-cword-toggle)

nmap <Space>R <Plug>(quickhl-manual-reset)

nmap <C-j> :  <C-u>QuickhlManualGoToNext<CR>
nmap <C-k> :  <C-u>QuickhlManualGoToPrev<CR>

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

" window
nnoremap s <Nop>
nnoremap sH <C-w>H
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
call submode#enter_with('winsize', 'n', '', 's>', '<C-w>>')
call submode#enter_with('winsize', 'n', '', 's<', '<C-w><')
call submode#enter_with('winsize', 'n', '', 's_', '<C-w>-')
call submode#enter_with('winsize', 'n', '', 's^', '<C-w>+')
call submode#map('winsize', 'n', '', '>', '<C-w>>')
call submode#map('winsize', 'n', '', '<', '<C-w><')
call submode#map('winsize', 'n', '', '_', '<C-w>-')
call submode#map('winsize', 'n', '', '^', '<C-w>+')

