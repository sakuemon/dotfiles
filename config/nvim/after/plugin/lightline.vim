let g:lightline = {'colorscheme': 'solarized dark'}
let g:lightline = {
	\ 'colorscheme': 'darcula',
	\ 'active': {
	\	'left':  [['mode', 'paste'],
	\		['gitbranch', 'readonly', 'filename', 'modified']],
	\	'right': [ ['lineinfo'],
	\		['fileformat', 'fileencoding', 'filetype', 'charvaluehex']],
	\ },
	\ 'component': {
	\	'charvaluehex': '0x%B'
	\ },
	\ 'component_function': {
	\	'gitbranch': 'LighlineFugitive',
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

function! LighlineFugitive()
	return exists('*fugitive#head') ? fugitive#head() : ''
endfunction

function! LightlineTabFilename(n) abort
	let buflist = tabpagebuflist(a:n)
	let winnr = tabpagewinnr(a:n)
	let _ = pathshorten(expand('#'.buflist[winnr - 1].':f'))
	return _ !=# '' ? _ : '[No Namem]'
endfunction
