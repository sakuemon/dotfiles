require('overseer').setup()

local os = require('overseer')

os.register_template({
	name = "golangci-lint",
	builder = function()
		return {
			cmd = {'golangci-lint'},
			args = {'run', './...', '--print-issued-lines=false'},
			components = {
				{
					'on_output_quickfix',
					errorformat = [[%A%f:%l:%c:\ %m,%-G%.%#]],
					open = true,
					set_diagnostics = true,
				},
				'default'
			},
		}
	end,
	condition = {
		filetype = {'go'},
	},
})

local map = vim.keymap.set
local opts = {
	noremap = true,
	silent = true,
}
map('n', '<Space>r', ':OverseerRun<CR>', opts)
