local navic = require('nvim-navic')

local filename = {
	'filename',
	path = 1,
}

require('lualine').setup({
	options = {
		icon_enabled = false,
		component_separators = '|',
		section_separators = '|',
		theme = 'dracula-nvim',
		disabled_filetypes = {
			'dap-repl',
			'dapui_console',
			'dapui_scopes',
			'dapui_stacks',
			'dapui_watches',
			'dapui_breakpoints',
			'qf',
		}
	},
	sections = {
		lualine_b = {
			{
				'filename',
				path = 1,
			},
			{
				navic.get_location,
				cons = navic.is_available,
			},
		},
		lualine_c = {
			'overseer',
		},
		lualine_x = {
			'encoding',
			'%B',
			{
				'fileformat',
				symbols = {
					unix = 'LF',
					dos = 'CRLF',
					mac = 'CR',
				}
			},
			'filetype',
		},
		lualine_y = {
			'progress'
		},
		lualine_z = {
			'location'
		},
	},
	extensions = {
		'quickfix',
		'nvim-dap-ui',
		'symbols-outline'
	}
})
