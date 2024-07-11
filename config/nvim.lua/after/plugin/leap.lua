local leap = require('leap')

leap.opts.special_keys.prev_target = '<backspace>'
leap.opts.special_keys.prev_group = '<backspace>'

vim.keymap.set({'n', 'x', 'o'}, 'f',  '<Plug>(leap-forward)') 
vim.keymap.set({'n', 'x', 'o'}, 'F',  '<Plug>(leap-backward)') 
vim.keymap.set({'n', 'x', 'o'}, 'gf', '<Plug>(leap-from-window)') 
