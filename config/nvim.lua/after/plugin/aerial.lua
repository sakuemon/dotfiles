require("aerial").setup({
	backends = {
		["_"] = { "treesitter", "lsp", "markdown", "asciidoc", "man" },
		go = { "lsp", "treesitter" },
		lua = { "lsp", "treesitter" },
		python = { "treesitter", "lsp" },
	},
})
