let g:python3_host_prog = '/usr/local/bin/python3'

if !&compatible
  set nocompatible
endif

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

filetype off
filetype plugin indent off
syntax enable

runtime! options.vim
