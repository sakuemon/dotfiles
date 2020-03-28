" global
let g:startify_lists = [
	\ { 'type': 'files',     'header': ['   MRU']            },
	\ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
	\ { 'type': 'sessions',  'header': ['   Sessions']       },
\ ]

let g:startify_files_number = 20
let g:startify_session_dir = "~/.vim/sessions"
let g:startify_session_sort = 1
