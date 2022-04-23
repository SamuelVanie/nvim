local fn = vim.fn 
-- Automatically install packer
 
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system{
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Plugins part

return require 'packer'.startup(function()
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim' -- require by some plugins

  -- completion plugins
  use "hrsh7th/nvim-cmp"  -- plugin
  use "hrsh7th/cmp-buffer"  -- completion for buffer
  use "hrsh7th/cmp-path"  -- completion for file in the path
  use "hrsh7th/cmp-cmdline" -- command line completion 
  use "hrsh7th/cmp-nvim-lsp" 

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- nvim tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }
  }

  -- Telescope file manager
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- color scheme
  use "nonetallt/vim-neon-dark"

  -- snippets
  use "L3MON4D3/LuaSnip" -- snippet engine
  use "rafamadriz/friendly-snippets" -- pack of snippets

  -- dev icons for nerdfont
  use 'kyazdani42/nvim-web-devicons'

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer" -- install the server much simpler

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
