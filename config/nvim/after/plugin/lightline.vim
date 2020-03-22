let g:lightline = {
	\ 'active': {
	\	'left': [ ['mode', 'paste'],
	\		['gitbranch', 'readonly', 'filename', 'modified', 'method'],
	\	],
	\	'right': [ ['lineinfo'],
	\		['fileformat', 'fileencoding', 'filetype', 'charvaluehex'],
	\       ['asyncrun_status']
	\]},
	\ 'component': {
	\	'charvaluehex': '0x%B'
	\ },
	\ 'component_function': {
	\	'gitbranch': 'LightlineFugitive',
	\   'method': 'NearestMethodOrFunction',
	\ }
\ }

let g:lightline.tab = {
	\ 'active': ['tabnum', 'filename', 'modified'],
	\ 'inactive': ['tabnum', 'filename', 'modified'],
	\}

let g:lightline.tab_component_function = {
	\ 'filename': 'LightlineTabFilename',
	\ 'modified': 'lightline#tab#modified',
	\ 'tabnum': 'lightline#tab#tabnum'
\}

let g:lightline.component_expand = {
	\ 'asyncrun_status': 'lightline#asyncrun#status',
	\}

function! LighlineFugitive()
	return exists('*fugitive#head') ? fugitive#head() : ''
endfunction

function! LightlineTabFilename(n) abort
	let buflist = tabpagebuflist(a:n)
	let winnr = tabpagewinnr(a:n)
	let _ = pathshorten(expand('#'.buflist[winnr - 1].':f'))
	return _ !=# '' ? _ : '[No Namem]'
endfunction
