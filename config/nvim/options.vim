" BASIC {{{
" cursor
set cursorline

" message format
set shortmess+=I

" bells
set visualbell t_vb=
set noerrorbells

" spell check
set spell
set spelllang=en,cjk
hi clear SpellBad
hi SpellBad cterm=underline

" SEARCH & REPLACE
set incsearch      " インクリメンタルサーチ set hlsearch
set ignorecase
set smartcase		" 大文字を含んでいたらcaseを区別 set wrapscan		" ファイルの最後に到達したら、最初から
set inccommand=split

" SPLIT
set splitbelow
set splitright

" BUFFER
set hidden

" TAB
" this is defalut setting.
" see ftplugin
set tabstop=4		" タブ幅
set softtabstop=0	" タブキーを押したときに挿入される幅。0=tabstopの値。
set shiftwidth=4	" インデント幅
set autoindent		" 改行時、自動インデント
set smartindent

" LINE
set textwidth=0	" 一行の文字数 set wrap			" 折り返し

" AUTOCOMPLETE
set wildmenu		" 補完候補表示

" DISPLAY
set number
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
set showcmd
set cmdheight=2

" TAB LINE
set showtabline=2

" BACKUP
set noswapfile

" SESSION
set sessionoptions="blank,buffers,curdir,folds,winsize,help,tabpages,terminal"

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
"
" WINDOW
nnoremap <silent> <C-w>v :<C-u>vs<CR>
nnoremap <silent> <C-w>x :<C-u>sp<CR>

" FILETYPE {{{
filetype plugin on
filetype indent on

autocmd BufRead,BufNewFile * setlocal foldmethod=marker
" FILETYPE }}}

" LOCAL
if filereadable(expand('~/.vimrc.local'))
	source ~/.vimrc.local
endif

