require('nvim_comment').setup({
	create_mappingss = false,
})

vim.keymap.set({'n', 'v'}, '<M-/>', ':CommentToggle<CR>')
