"autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
autocmd BufWritePre *.go :Format
autocmd FileType go setlocal commentstring=//\ %s

nnoremap [Fzf]t : <C-u>Files <C-R>=expand('%:h')<CR><CR>_test.go
nnoremap [QRun]l : <C-u>QuickRun go.lint<CR>
nnoremap [QRun]t : <C-u>QuickRun go.test<CR>
