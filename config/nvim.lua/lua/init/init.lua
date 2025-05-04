
local opt = vim.opt

opt.mouse = 'nv'

opt.cursorline =  true
opt.shortmess:append({I = true})
opt.errorbells = false
opt.visualbell = true

opt.incsearch =  true
opt.ignorecase = true
opt.smartcase =  true
opt.inccommand =  "split"

opt.splitbelow = true
opt.splitright = true

opt.hidden = true

opt.tabstop = 4
opt.softtabstop = 0
opt.shiftwidth = 4
opt.autoindent = true
opt.smartindent = true

opt.textwidth = 0
opt.scrolloff = 7

opt.wildmenu = true

opt.number = true
opt.showmatch = true
opt.ruler = false
opt.list = true
opt.listchars = "eol:¬,tab:>."
-- TODO highlit zenkakuspace

opt.laststatus = 2
opt.showcmd = true
opt.cmdheight = 2

opt.showtabline = 2

opt.swapfile = false

opt.sessionoptions = "blank,buffers,curdir,folds,winsize,help,tabpages,terminal"

opt.foldlevelstart = 99

opt.signcolumn = 'yes:1'

opt.clipboard = 'unnamedplus'

require('init.lazy')

vim.cmd[[colorscheme dracula]]

vim.api.nvim_create_autocmd({'TermOpen'},{
	callback = function()
		vim.wo.number = false
	end
})
