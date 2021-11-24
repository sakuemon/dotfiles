if empty(glob('$HOME/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" 足りないプラグインがあれば :PlugInstall を実行
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


call plug#begin('$HOME/.local/share/nvim/plugged')
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'aklt/plantuml-syntax'
Plug 'albertomontesg/lightline-asyncrun'
Plug 'andymass/vim-matchup'
Plug 'arp242/switchy.vim'
Plug 'benmills/vimux'
Plug 'buoto/gotests-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'haya14busa/vim-asterisk'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'kana/vim-submode'
Plug 'lambdalisue/gina.vim'
Plug 'liuchengxu/vista.vim'
Plug 'machakann/vim-sandwich'
Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'osyo-manga/vim-anzu'
Plug 'romainl/vim-qf'
Plug 'sbdchd/neoformat'
Plug 'sebdah/vim-delve'
Plug 'skywind3000/asyncrun.vim'
Plug 't9md/vim-choosewin'
Plug 't9md/vim-quickhl'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme gruvbox
