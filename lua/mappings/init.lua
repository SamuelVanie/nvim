local keymap = vim.api.nvim_set_keymap 
     
keymap('n','<leader>fs', ':w<CR>', {})    
local opts = { noremap = true }    
keymap('n', '<leader>wj', '<c-w>j', opts)    
keymap('n', '<leader>wh', '<c-w>h', opts)    
keymap('n', '<leader>wk', '<c-w>k', opts)    
keymap('n', '<leader>wl', '<c-w>l', opts)    
keymap('n', '<CR>', ':noh<CR><CR>', opts)     
     
keymap('v', '<', '<gv', opts)    
keymap('v', '>', '>gv', opts)    
     
keymap('n', '<m-j>', ':resize -2<CR>', opts)    
keymap('n', '<m-k>', ':resize +2<CR>', opts)    
keymap('n', '<m-h>', ':vertical resize -2<CR>', opts)    
keymap('n', '<m-l>', ':vertical resize +2<CR>', opts)    

-- Telescope keybindings
keymap('n', '<leader><leader>', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>r', ':Telescope live_grep<CR>', opts)
keymap('n', '<leader>bb', ':Telescope buffers<CR>', opts)
keymap('n', '<leader>fh', ':Telescope help_tags<CR>', opts)

-- tagbar map
keymap('n', '<c-t>', ':TagbarToggle<CR>', opts)

-- insert mode goto beginning and end of line
keymap('i', '<C-a>', '<ESC>I', {})
keymap('i', '<C-e>', '<ESC>A', {})
keymap('i', '<M-f>', '<ESC><Space>Wi', opts)
keymap('i', '<M-b>', '<ESC>Bi', opts)

-- Nerdtree mappings configuration
keymap('n', '<leader>op', ':NvimTreeToggle<CR>', {})
keymap('n', '<leader>f', ':NvimTreeFindFile<CR>', {})
