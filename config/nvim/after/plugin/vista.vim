let g:vista_default_executive = 'coc'
let g:vista_sidbar_width = 50
let g:vista_update_on_text_changed = 1
let g:vista_disable_statusline = 1

function! NearestMethodOrFunction() abort
  let a =  get(b:, 'vista_nearest_method_or_function', '')
  return '['.a.']'
endfunction

set statusline+=%{NearestMethodOrFunction()}

autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

