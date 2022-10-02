-- From https://dev.to/vonheikemen/neovim-using-vim-plug-in-lua-3oom
-- tpope/vim-sensiblelocal Plug = vim.fn['plug#']

-- vim.call('plug#begin', '~/.config/nvim/plugged')

-- Plug 'Mofiqul/vscode.nvim'

-- vim.call('plug#end')

-- This file can be loaded by calling `lua require('plugins')` from your init.vim


-----------------------
local g = vim.g

-- coc stuff
g.coc_global_extensions = {
  'coc-snippets',
  'coc-pairs',
  'coc-tsserver',
  'coc-eslint', 
  'coc-prettier',
  'coc-json',
}

-- NERDTREE
g.NERDTreeIgnore = {
  '^node_modules',
}
g.ctrlp_user_command = {
	'.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard',
}

-- Run `:PackerSync` to init
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'Mofiqul/vscode.nvim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'scrooloose/nerdcommenter'
  -- nerdtree stuff
  use 'scrooloose/nerdtree'
  use 'Xuyuanp/nerdtree-git-plugin'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'ryanoasis/vim-devicons'
  -- end of nerdtree stuff
  use 'ctrlpvim/ctrlp.vim'
  use 'airblade/vim-gitgutter'
  -- headers
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-treesitter-context'
end)
