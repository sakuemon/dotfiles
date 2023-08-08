local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

require('telescope').setup({
	defaults = {
		layout_strategy = 'vertical',
		layout_config = {
			cursor = {
				prompt_position = 'top',
				width = 0.80,
			},
			horizontal = {
				prompt_position = 'bottom',
				width = 0.80,
			},
			vertical = {
				preview_height = 0.7,
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
				hidden = true,
			},
		},
		extensions = {
			fzf= {
				fuzzy = true,
				override_generic_sorter = false,
				override_file_sorter = true,
				case_mode = 'smart_case',
			},
			aerial = {
				show_nesting = {
					['_'] = true,
					json = true,
					yaml = true,
				}
			},
		}
	},
})

require('telescope').load_extension('fzf')
require('telescope').load_extension('overseer')
require('telescope').load_extension('aerial')

local map = vim.keymap.set
map('n', '<Space>f', '<NOP>', {noremap = true})
map('n', '<Space>ff', builtin.find_files)
map('n', '<Space>fb', builtin.buffers)
map('n', '<Space>fm', builtin.live_grep)
map('n', '<Space>fr', builtin.oldfiles)
map('n', '<Space>ft', '<cmd>Telescope overseer<cr>')
map('n', '<Space>fs', '<cmd>Telescope aerial<cr>')

-- lsp
local jump_type_v = {
	jump_type = 'vsplit',
}
local jump_type_s = {
	jump_type = 'split',
}
local jump_type_t = {
	jump_type = 'tab',
}
map('n', 'gy', builtin.lsp_definitions)
map('n', '<C-]><C-]>', builtin.lsp_definitions)
map('n', '<C-]><C-v>', function() builtin.lsp_definitions(jump_type_v) end)
map('n', '<C-]><C-x>', function() builtin.lsp_definitions(jump_type_s) end)
map('n', '<C-]><C-t>', function() builtin.lsp_definitions(jump_type_t) end)
map('n', 'gi', builtin.lsp_implementations)
map('n', 'gr', builtin.lsp_references)
map('n', 'gd', builtin.lsp_type_definitions)
map('n', 'K',  '<cmd>lua vim.lsp.buf.hover()<CR>')

