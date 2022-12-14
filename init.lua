-- From https://github.com/numToStr/dotfiles/tree/master/neovim/.config/nvim
-- Vanilla Config
require('settings')
require('autocmd')
require('plugins')
require('keybinds')
require('coc')

---Pretty print lua table
function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, { ... })
    print(unpack(objects))
end
