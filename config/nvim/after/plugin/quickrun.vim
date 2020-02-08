nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>" 

let g:quickrun_config = get(g:, 'quickrun_config', {})
let g:quickrun_config._ = {
	\ 'runner' : 'vimproc',
	\ 'runner/vimproc/updatetime' : 60,
	\ 'outputter' : 'error',
	\ 'outputter/error/success' : 'buffer',
	\ 'outputter/error/error'   : 'quickfix',
	\ 'outputter/buffer/split'  : ':rightbelow 8sp',
	\ 'outputter/buffer/close_on_empty' : 1,
	\}

let g:quickrun_config['go.lint'] = {
	\ 'command' : 'golangci-lint',
	\ 'cmdopt'  : 'run',
	\ 'srcfile' : '.',
	\ 'exec'    :'%c %o %s',
	\}

let g:quickrun_config['go.test'] = {
	\ 'command' : 'go',
	\ 'cmdopt'  : 'test -v',
	\ 'srcfile' : './.',
	\ 'exec'    : '%c %o %s',
	\}

noremap [QRun] <Nop>
nmap <Space>r [QRun]
