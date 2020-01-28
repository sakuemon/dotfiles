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
