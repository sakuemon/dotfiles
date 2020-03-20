autocmd FileType go setlocal commentstring=//\ %s
"let &errorformat="%f:%l:%c:\ %m, %f:%l:%c\ %#%m"
let errorformat="%f:%l:%c %m"

nnoremap [Fzf]t : <C-u>Files <C-R>=expand('%:h')<CR><CR>_test.go


nnoremap [Run]l : <C-u>AsyncRun golangci-lint run --out-format tab "%:h"/**<CR>
nnoremap [Run]t : <C-u>AsyncRun go test -v "%:h"/**<CR>


" vim-delve
let g:delve_use_vimux = 1
nnoremap [Delve] <Nop>
nmap <Space>0 [Delve]
nnoremap <silent> [Delve]b : <C-u>DlvToggleBreakpoint<CR>
nnoremap <silent> [Delve]t : <C-u>DlvToggleTracepoint<CR>
nnoremap          [Delve]c : <C-u>DlvConnect host:port
nnoremap          [Delve]1 : <C-u>DlvDebug
nnoremap          [Delve]0 : <C-u>DlvTest
