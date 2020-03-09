autocmd FileType go setlocal commentstring=//\ %s
"let &errorformat="%f:%l:%c:\ %m, %f:%l:%c\ %#%m"
let errorformat="%f:%l:%c %m"

nnoremap [Fzf]t : <C-u>Files <C-R>=expand('%:h')<CR><CR>_test.go


nnoremap [Run]l : <C-u>AsyncRun golangci-lint run --out-format tab "%:h"/**<CR>
nnoremap [Run]t : <C-u>AsyncRun go test -v "%:h"/**<CR>

