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

  -- autoclose brackets
  use "windwp/nvim-autopairs"

  -- autoclose tag
  use "windwp/nvim-ts-autotag"

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- lualine configuration
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Telescope file manager
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Set up github copilot
  use "github/copilot.vim"

  -- tag bar
  use "preservim/tagbar"

  -- color scheme
  use "nonetallt/vim-neon-dark"
  use "sainnhe/gruvbox-material"
  use "sainnhe/everforest"

  -- snippets
  use "L3MON4D3/LuaSnip" -- snippet engine
  use "rafamadriz/friendly-snippets" -- pack of snippets

  -- dev icons for nerdfont
  use 'kyazdani42/nvim-web-devicons'

  -- vim surround
  use 'tpope/vim-surround'

  -- vim commentary
  use 'b3nj5m1n/kommentary'

  -- add some custom text object
  use 'nvim-treesitter/nvim-treesitter-textobjects'

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer" -- install the server much simpler

  -- My terminal plugin
  use "akinsho/toggleterm.nvim"

  use 'rbgrouleff/bclose.vim' -- depedency for neovim

  -- My debugger
  use "mfussenegger/nvim-dap"
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} } -- ui mode for nvim-dap plugin
  use 'leoluz/nvim-dap-go'

  -- File manager
  --use 'preservim/nerdtree'
  use "rafaqz/ranger.vim"


  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
