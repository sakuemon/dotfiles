let g:python3_host_prog = '/usr/local/bin/python3'

if !&compatible
  set nocompatible
endif

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

runtime! plugins/dein.vim

filetype plugin indent on
syntax enable

runtime! options.vim
