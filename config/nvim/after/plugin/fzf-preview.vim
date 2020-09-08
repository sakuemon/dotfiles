if executable('fish')
    " use fish for embedded terminals
    set shell=fish
    " use bash for else
    let $SHELL = 'bash'
endif

" Commands used for project grep
let g:fzf_preview_grep_cmd = 'rg --line-number --no-heading --color=never -F'
