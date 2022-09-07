local map = vim.keymap.set

-- global
map('n', '<ESC><ESC>', ':noh<CR>')


-- gina
map('n', '<Space>g', '<NOP>', {noremap = true})
map('n', '<Space>gs', ':Gina status<CR>') 
map({'n', 'v'}, '<Space>gb', ':Gina browse :<CR>') 
map('n', '<Space>gB', ':Gina blame<CR>')

-- hop
map('n', '<Leader><Leader>w', ':HowWord<CR>')
map('n', '<Leader><Leader>f', ':HowChar1AC<CR>')
map('n', '<Leader><Leader>F', ':HowChar1BC<CR>')

-- quickfix
map('n', '<C-q><C-j>', '<C-u>cnext<CR>')
map('n', '<C-q><C-k>', '<C-u>cprevious<CR>')
map('n', '<C-q><C-o>', '<C-u>copen<CR>')
map('n', '<C-q><C-q>', '<C-u>cclose<CR>')

-- quickhl
map({'n', 'v'}, '<Space>h', '<Plug>(quickhl-manual-this)')
map('n',        '<Space>c', '<Plug>(quickhl-cword-toggle)')
map('n',        '<Space>R', '<Plug>(quickhl-manual-reset)')
map('n',        '<C-j>', '<C-u>QuickhlManualGoToNext<CR>')
map('n',        '<C-k>', '<C-u>QuickhlManualGoToPrev<CR>')

-- tmux
map('n', '<C-w>h',  ':TmuxNavigateLeft<CR>', {silent=true})
map('n', '<C-w>j',  ':TmuxNavigateDown<CR>', {silent=true})
map('n', '<C-w>k',  ':TmuxNavigateUp<CR>', {silent=true})
map('n', '<C-w>l',  ':TmuxNavigateRight<CR>', {silent=true})
map('n', '<C-w>\\', ':TmuxNavigatePrevious<CR>', {silent=true})

-- window
map('n', 's', '<Nop>', {noremap = true})
map('n', 'sH', '<C-w>H')
map('n', 'sJ', '<C-w>J')
map('n', 'sK', '<C-w>K')
map('n', 'sL', '<C-w>L')

