" BASIC {{{
" cursor
set cursorline

" message format
set shortmess+=I

" bells
set visualbell t_vb=
set noerrorbells

" LANG
" set helplang=ja,en

" DOC
" helptags $HOME/.vim/doc

" SEARCH & REPLACE
set incsearch      " インクリメンタルサーチ set hlsearch
set ignorecase
set smartcase		" 大文字を含んでいたらcaseを区別 set wrapscan		" ファイルの最後に到達したら、最初から
set inccommand=split


" SPLIT
set splitbelow
set splitright

" GREP
"set grepprg=ack\ -a

" TAB
" this is defalut setting.
" see ftplugin
set tabstop=4		" タブ幅
set softtabstop=0	" タブキーを押したときに挿入される幅。0=tabstopの値。
set shiftwidth=4	" インデント幅
"set expandtab		" タブを空白に
set autoindent		" 改行時、自動インデント
set smartindent

" LINE
set textwidth=0	" 一行の文字数 set wrap			" 折り返し

" AUTOCOMPLETE
set wildmenu		" 補完候補表示

" DISPLAY
set showmatch		" 対応する括弧
set noruler		" カーソル行の表示（statuslineで設定）
set list			" 改行、タブなどの表示
" Listモード (訳注: オプション 'list' がオンのとき) に使われる文字を設定する。
set listchars=eol:¬,tab:>.
highlight ZenkakuSpace guibg=black
match ZenkakuSpace /　/
syntax on

" STATUS LINE
set laststatus=2	" ステータスラインの表示設定。2=常に
" set statusline=%F%m%r%h%w\%=\[%Y][%{&fenc!=''?&fenc:&enc}]\[%{&ff}]\[POS=%04l,%04v]\[LEN=%L]
set showcmd

" TAB LINE
set showtabline=2

" BACKUP
" set backup			" バックアップする
" set backupdir=$HOME/.vim/backup	" バックアップディレクトリ
" let &directory=&backupdir			" スワップディレクトリ
set noswapfile

" FOLDING
set foldlevelstart=99

" TAGS
if has('path_extra')
	set tags+=tags;$HOME/project
endif

" clipboard
if has('nvim')
	set clipboard+=unnamedplus
endif

" BASIC }}}

" PLUGIN {{{
"" lightline.vim
let g:lightline = {
	\ 'colorscheme': 'darcula',
	\ 'active': {
	\	'left':  [	['mode', 'paste'],
	\				['gitbranch', 'readonly', 'filename', 'modified']],
	\	'right': [ ['lineinfo'],
	\				['fileformat', 'fileencoding', 'filetype', 'charvaluehex']],
	\ },
	\ 'component': {
	\	'charvaluehex': '0x%B'
	\ },
	\ 'component_function': {
	\	'gitbranch': 'fugitive#head',
	\ }
\ }

"" ack.vim
if executable('pt')
	let g:ackprg = 'pt --follow --nogroup --nocolor'
endif

" PLUGIN }}}

" FILETYPE {{{
filetype plugin on
filetype indent on
"autocmd FileType *
"\   if &l:omnifunc == ''
"\ |   setlocal omnifunc=syntaxcomplete#Complete
"\ | endif

"" DEFAULT {{{
autocmd BufRead,BufNewFile * setlocal foldmethod=marker
" }}}

""" see .vim/ftplugin/foobar.vim
"" SHELL SCRIPT {{
autocmd BufRead,BufNewFile *.sh setlocal filetype=sh
autocmd FileType sh setlocal foldmethod=indent
" }}}

"" PHP {{{
autocmd BufRead,BufNewFile *.php setlocal filetype=php
autocmd BufRead,BufNewFile *.inc setlocal filetype=php
" }}}

"" Python {{{
autocmd BufRead,BufNewFile *.py setlocal filetype=python
autocmd FileType python setlocal formatoptions-=or
" }}}

"" HTML {{{
autocmd BufRead,BufNewFile *.html set filetype=html
autocmd BufRead,BufNewFile *.ctp set filetype=html
autocmd BufRead,BufNewFile *.html let g:no_html_toolbar='no'
autocmd BufRead,BufNewFile *.html let g:do_xhtml_mappings='yes'
autocmd BufRead,BufNewFile *.html let g:html_default_charset='utf-8'
" }}}

"" css {{{
autocmd BufRead,BufNewFile *.css set filetype=css
" }}}

"" java {{{
autocmd BufRead,BufNewFile *.java set filetype=java
" }}}

"" typescript {{{
autocmd BufRead,BufNewFile *.tsx set filetype=typescript
autocmd BufRead,BufNewFile *.ts  set filetype=typescript
" }}}


" FILETYPE }}}

nnoremap <silent> <C-w>\| :<C-u>vs<CR>
nnoremap <silent> <C-w>- :<C-u>sp<CR>
