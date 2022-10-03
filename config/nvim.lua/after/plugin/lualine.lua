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
		}
	},
	sections = {
		lualine_c = {
			'overseer',
			filename,
			{
				navic.get_location,
				cond = navic.is_available
			},
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
	-- need neovim 8.0
	-- winbar = {
	-- 	lualine_a = {
	-- 		{navic.get_location, cond = navic.is_available},
	-- 	}
	-- },
	-- tabline = {
	-- 	lualine_a = {
	-- 		filename,
	-- 	},
	-- 	lualine_b = {},
	-- 	lualine_c = {},
	-- 	lualine_x = {},
	-- 	lualine_y = {},
	-- 	lualine_z = {}
	-- },
	extensions = {
		'quickfix',
		'nvim-dap-ui',
		'symbols-outline'
	}
})
