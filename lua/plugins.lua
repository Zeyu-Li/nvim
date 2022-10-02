-- From https://dev.to/vonheikemen/neovim-using-vim-plug-in-lua-3oom
-- tpope/vim-sensiblelocal Plug = vim.fn['plug#']

-- vim.call('plug#begin', '~/.config/nvim/plugged')

-- Plug 'Mofiqul/vscode.nvim'

-- vim.call('plug#end')

-- This file can be loaded by calling `lua require('plugins')` from your init.vim


-----------------------

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'Mofiqul/vscode.nvim'


end)

