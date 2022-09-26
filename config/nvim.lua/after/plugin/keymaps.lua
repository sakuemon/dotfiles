local map = vim.keymap.set

local opts = {
	noremap = true,
	silent = true,
}

-- global
map('n', '<ESC><ESC>', ':noh<CR>', opts)

-- gina
map('n', '<Space>g', '<NOP>', opts)
map('n', '<Space>gs', ':Gina status<CR>', opts) 
map({'n', 'v'}, '<Space>gb', ':Gina browse :<CR>', opts) 
map('n', '<Space>gB', ':Gina blame<CR>', opts)

-- hop
map('n', '<Leader><Leader>w', ':HopWord<CR>', opts)
map('n', '<Leader><Leader>f', ':HopChar1AC<CR>', opts)
map('n', '<Leader><Leader>F', ':HopChar1BC<CR>', opts)

-- quickfix
map('n', '<C-q><C-j>', ':cnext<CR>', opts)
map('n', '<C-q><C-k>', ':cprevious<CR>', opts)
map('n', '<C-q><C-o>', ':copen<CR>', opts)
map('n', '<C-q><C-q>', ':cclose<CR>', opts)

-- quickhl
map({'n', 'v'}, '<Space>h', '<Plug>(quickhl-manual-this)', opts)
map('n',        '<Space>c', '<Plug>(quickhl-cword-toggle)', opts)
map('n',        '<Space>R', '<Plug>(quickhl-manual-reset)', opts)
map('n',        '<C-j>', ':QuickhlManualGoToNext<CR>', opts)
map('n',        '<C-k>', ':QuickhlManualGoToPrev<CR>', opts)

-- tmux
map('n', '<C-w>h',  ':TmuxNavigateLeft<CR>', {silent=true})
map('n', '<C-w>j',  ':TmuxNavigateDown<CR>', {silent=true})
map('n', '<C-w>k',  ':TmuxNavigateUp<CR>', {silent=true})
map('n', '<C-w>l',  ':TmuxNavigateRight<CR>', {silent=true})
map('n', '<C-w>\\', ':TmuxNavigatePrevious<CR>', {silent=true})

-- window
map('n', 's', '<Nop>', opts)
map('n', 'sH', '<C-w>H')
map('n', 'sJ', '<C-w>J')
map('n', 'sK', '<C-w>K')
map('n', 'sL', '<C-w>L')

