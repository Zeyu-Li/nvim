-- quiet keybindings
local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

-- remap jj to esc in insert mode
map('i', 'jj', '<ESC>')

