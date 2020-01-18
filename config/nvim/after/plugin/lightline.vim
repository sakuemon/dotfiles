let g:lightline = {'colorscheme': 'solarized dark'}
let g:lightline = {
	\ 'colorscheme': 'darcula',
	\ 'active': {
	\	'left':  [	['mode', 'paste'],
	\				['gitbranch', 'readonly', 'filename', 'modified']],
	\	'right': [ ['lineinfo'],
	\				['fileformat', 'fileencoding', 'filetype', 'charvaluehex']],
	\ },
	\ 'component': {
	\	'charvaluehex': '0x%B'
	\ },
	\ 'component_function': {
	\	'gitbranch': 'fugitive#head',
	\ }
\ }

