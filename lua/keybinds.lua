-- quiet keybindings
local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

-- remap jj to esc in insert mode
map('i', 'jj', '<ESC>')
map('i', '<C-S-j>', '<ESC>yypi')
map('i', '<C-S-k>', '<ESC>yyPi')
map('i', '<C-A-k>', '<ESC>yyPi')
map('i', '<C-A-j>', '<ESC>yypi')
map('n', '<C-n>', ':NERDTreeToggle<CR>')
map('n', '<A-,>', ':PackerSync<CR>')
map('n', '<C-S-j>', 'yypi')
map('n', '<C-S-k>', 'yyPi')
map('n', '<C-A-k>', 'yyPi')
map('n', '<C-A-j>', 'yypi')

-- commenter toggle
vim.api.nvim_command('nmap <C-_> <plug>NERDCommenterToggle')
vim.api.nvim_command('vmap <C-_> <plug>NERDCommenterToggle')

