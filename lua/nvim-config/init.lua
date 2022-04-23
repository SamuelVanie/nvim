--bo local to buffer
--wo local to window
--o global
 
local o = vim.o
local wo = vim.wo
local bo = vim.bo

vim.g.mapleader = ' '

bo.expandtab = true
bo.shiftwidth = 2
bo.softtabstop = 2


o.ignorecase = true
o.hlsearch = true
o.incsearch = true
o.smartcase = true

o.splitbelow = true
o.splitright = true
wo.wrap = false
wo.scrolloff = 5
wo.number = true
bo.fileencoding = 'utf-8'
o.termguicolors = true

o.clipboard = unnamedplus
o.completeopt = menuone,noinsert,noselect
o.guicursor=block
bo.smartindent=true
o.smarttab=true
o.timeoutlen=160

o.hidden = true
