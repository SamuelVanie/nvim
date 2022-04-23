local keymap = vim.api.nvim_set_keymap    
     
keymap('n','<c-s>', ':w<CR>', {})    
keymap('n','<c-q>', ':q<CR>', {})    
keymap('i', '<c-s>', '<Esc>:w<CR>a', {})    
local opts = { noremap = true }    
keymap('n', '<c-j>', '<c-w>j', opts)    
keymap('n', '<c-h>', '<c-w>h', opts)    
keymap('n', '<c-k>', '<c-w>k', opts)    
keymap('n', '<c-l>', '<c-w>l', opts)    
keymap('n', '<CR>', ':noh<CR><CR>', opts)     
     
keymap('v', '<', '<gv', opts)    
keymap('v', '>', '>gv', opts)    
     
keymap('n', '<m-j>', ':resize -2<CR>', opts)    
keymap('n', '<m-k>', ':resize +2<CR>', opts)    
keymap('n', '<m-h>', ':vertical resize -2<CR>', opts)    
keymap('n', '<m-l>', ':vertical resize +2<CR>', opts)    
keymap('n', '<leader>t', '<c-w><c-v>:terminal<CR>', opts)

-- Telescope keybindings
keymap('n', '<c-p>', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>r', ':Telescope live_grep<CR>', opts)
keymap('n', '<leader>b', ':Telescope buffers<CR>', opts)
keymap('n', '<leader>fh', ':Telescope help_tags<CR>', opts)

-- Nvimtree keybindings
keymap('n', '<c-u>', ':NvimTreeToggle<CR>', opts)
