let g:vista_default_executive = 'coc'
let g:vista_fzf_previwe = ['right:50%']

function! NearestMethodOrFunction() abort
  let a =  get(b:, 'vista_nearest_method_or_function', '')
  return '['.a.']'
endfunction

set statusline+=%{NearestMethodOrFunction()}

autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

