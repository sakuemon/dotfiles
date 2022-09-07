require('lualine').setup({
	options = {
		icon_enabled = false,
		theme = 'auto',
		component_separators = '',
		section_separators = '',
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
