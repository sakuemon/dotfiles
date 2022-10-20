require('overseer').setup({
	dap = true,
})

local os = require('overseer')

local lint = {
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
}

local gotest = {
	name = "gotest",
	builder = function()
		return {
			cmd = {'go'},
			args = {'test', './...', '-race'},
		}
	end,
	condition = {
		filetype = {'go'},
	},
}

os.register_template(lint)
os.register_template(gotest)

local map = vim.keymap.set
local opts = {
	noremap = true,
	silent = true,
}

map('n', '<Space>rr', ':OverseerRun<CR>', opts)
