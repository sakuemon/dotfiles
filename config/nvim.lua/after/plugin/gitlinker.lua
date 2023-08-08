require('gitlinker').setup({
	mapping = nil,
	opts = {
		print_url = false,
	},
})

local map = vim.keymap.set
map('n', '<Space>gb', '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>', {silent = true})
