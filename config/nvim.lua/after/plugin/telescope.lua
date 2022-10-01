local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

require('telescope').setup({
	defaults = {
		layout_strategy = 'cursor',
		layout_config = {
			cursor = {
				prompt_position = 'top',
				width = 0.95,
			},
		},
		mappings = {
			i = {
				['<C-j>'] = actions.move_selection_next,
				['<C-k>'] = actions.move_selection_previous,
				['<ESC>'] = actions.close,
			},
			n = {
				['<C-j>'] = actions.move_selection_next,
				['<C-k>'] = actions.move_selection_previous,
				['<ESC>'] = actions.close,
			},
		},
		pickers = {
			find_files = {
				find_command = {"rg", "--files", "--hidden", "--glob", "!.git/*"},
			},
		},
		extensions = {
			fzf= {
				fuzzy = true,
				override_generic_sorter = false,
				override_file_sorter = true,
				case_mode = 'smart_case',
			},
		}
	},
})
require('telescope').load_extension('fzf')

local map = vim.keymap.set
map('n', '<Space>f', '<NOP>', {noremap = true})
map('n', '<Space>ff', builtin.find_files)
map('n', '<Space>fb', builtin.buffers)
map('n', '<Space>fm', builtin.live_grep)
map('n', '<Space>fr', builtin.oldfiles)

-- lsp
map('n', 'gy', builtin.lsp_definitions)
map('n', '<C-]>', builtin.lsp_definitions)
map('n', 'gi', builtin.lsp_implementations)
map('n', 'gr', builtin.lsp_references)
map('n', 'gd', builtin.lsp_type_definitions)
map('n', 'K',  '<cmd>lua vim.lsp.buf.hover()<CR>')

