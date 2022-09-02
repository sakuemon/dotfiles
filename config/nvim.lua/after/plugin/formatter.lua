require('formatter').setup({
	-- TODO golang setting
	['*'] = {
		require('formatter.filetypes.any').remove_trailing_whitespace
	}
})
