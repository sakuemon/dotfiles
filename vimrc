set nocompatible
" NEOVUNDLE {{{
filetype off

" if has('vim_starting')
" 	set runtimepath+=~/.vim/bundle/neobundle.vim/
" 	call neobundle#rc(expand('~/.vim/bundle/'))
" endif

" NeoBundle 'Shougo/neobundle.vim'
" NeoBundle 'Shougo/neocomplcache'
" NeoBundle 'Shougo/neosnippet'
" NeoBundle 'Shougo/unite.vim'
" NeoBundle 'ujihisa/unite-rake'
" NeoBundle 'basyura/unite-rails'
" NeoBundle 'tsukkee/unite-tag'
" NeoBundle 'tpope/vim-surround'
" NeoBundle 'tpope/vim-rails'
 
" NeoBundle 'thinca/vim-ref'

" ide
" NeoBundle 'scrooloose/nerdtree'
" NeoBundle 'vim-scripts/SrcExpl'
" NeoBundle 'taglist.vim'
" NeoBundle 'vim-scripts/Trinity'
" NeoBundle 'errormarker.vim'

" lang
" NeoBundle 'mattn/zencoding-vim'
" NeoBundle 'javacomplete'
" NeoBundle 'vim-coffee-script'

" }}}

filetype plugin on

" BASIC {{{
" message format
set shortmess+=I

" LANG
set helplang=ja,en

" DOC
" helptags $HOME/.vim/doc

" SEARCH
set incsearch      " インクリメンタルサーチ set hlsearch
set ignorecase
set smartcase		" 大文字を含んでいたらcaseを区別 set wrapscan		" ファイルの最後に到達したら、最初から

" GREP
set grepprg=ack\ -a

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
set statusline=%F%m%r%h%w\%=\[%Y][%{&fenc!=''?&fenc:&enc}]\[%{&ff}]\[POS=%04l,%04v]\[LEN=%L]
set showcmd

" TAB LINE
set showtabline=2

" BACKUP
set backup			" バックアップする
set backupdir=$HOME/.vim/backup	" バックアップディレクトリ
let &directory=&backupdir			" スワップディレクトリ

" FOLDING
set foldlevelstart=99

" TAGS
if has('path_extra')
	set tags+=tags;$HOME/project
endif

" clipboard
set clipboard+=unnamed

" BASIC }}}

" PLUGIN {{{
"" unit {{{

"" }}}
"" srcexpl.vim {{{
let g:SrcExpl_RefreshTime=1
let g:SrcExpl_UpdateTags=1
"let g:SrcExpl_updateTagsCmd="ctags -a --sort=foldcase --links=no -R ."
let g:SrcExpl_winHeight=5
let g:SrcExpl_pluginList=[
		\"_NERD_tree_"
	\]
" }}}

"" NERDTree {{{
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=[
		\'*.pyc'
	\]
" }}}

"" taglist {{{
let g:Tlist_Auto_Open = 1
let g:Tlist_Show_One_File = 1
let g:Tlist_Exit_OnlyWindow = 1
"let g:Tlist_Use_Right_Window = 1
let g:Tlist_Compact_Format = 1
" }}}

"" NEOCOMPLCACHE {{{
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
"let g:neocomplcache_enable_camel_case_completion = 1
"let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_keyword_length = 1
let g:neocomplcache_min_syntax_length = 1
let g:neocomplcache_auto_completion_start_length = 1
let g:neocomplcache_manual_completion_start_length = 1
let g:neocomplcache_snippets_dir = '~/.vim/snippets'
imap <silent><C-y> <Plug>(neocomplcache_snippets_expand)
smap <silent><C-y> <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-h> pumvisible() ? "\<C-y>\<C-h>" : "\<C-h>"
inoremap <expr><silent><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-s>     neocomplcache#complete_common_string()
" }}}

"" REF.VIM {{{
let g:ref_use_vimproc = 0
"" }}}

" PLUGIN }}}

" FILETYPE {{{
filetype plugin on
filetype indent on
autocmd FileType *
\   if &l:omnifunc == ''
\ |   setlocal omnifunc=syntaxcomplete#Complete
\ | endif

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

"" Mako {{{
autocmd BufRead,BufNewFile *.mako setlocal filetype=mako
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
" autocmd FileType java setlocal omnifunc=javacomplete#Complete
"autocmd FileType java setlocal tags+=$HOME/tags/tags.java
" }}}

"" coffee {{{
autocmd BufRead,BufNewFile *.coffee set filetype=coffee
" }

" FILETYPE }}}
