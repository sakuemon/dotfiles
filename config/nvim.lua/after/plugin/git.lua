local neogit = require('neogit')
neogit.setup {}

require('gitsigns').setup()

require('gitlinker').setup({
	mapping = nil,
	opts = {
		print_url = false,
	},
})

local map = vim.keymap.set


local gs = require('gitsigns')

map('n', '<Space>gb', gs.blame_line)
map('n', '<Space>go', '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>', {silent = true})
map('n', '<Space>gh', '<cmd>DiffviewFileHistory %<cr>')
