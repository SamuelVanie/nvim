local keymap = vim.api.nvim_set_keymap 
     
keymap('n','<c-x><c-s>', ':w<CR>', {})    
local opts = { noremap = true }    
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


-- Dap debugging
keymap('n', "<F5>", ":lua require'dap'.continue()<CR>", {})
keymap('n', "<F3>", ":lua require'dap'.step_over()<CR>", {})
keymap('n', "<F2>", ":lua require'dap'.step_into()<CR>", {})
keymap('n', "<F12>", ":lua require'dap'.step_out()<CR>", {})

keymap('n', "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>", {})
keymap('n', "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", {})
keymap('n', "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", {})
keymap('n', "<leader>dr", ":lua require'dap'.repl.open()<CR>", {})
