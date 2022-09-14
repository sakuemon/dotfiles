require('lualine').setup({
	options = {
		icon_enabled = false,
		component_separators = '|',
		section_separators = '|',
		theme = 'dracula-nvim',
	},
	sections = {
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
	}
})
