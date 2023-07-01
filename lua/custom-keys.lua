-- update leader key to ,
vim.g.mapleader = " "

-- fetch keymap
local map = vim.api.nvim_set_keymap

-- map the key n to run the command :NvimTreeToggle
map('n', '<leader>n', [[:NvimTreeToggle<CR>]], {})

-- Define the keymap for bufferline cycling
vim.api.nvim_set_keymap('n', '<S-Right>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Left>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })

-- Debugger
vim.api.nvim_set_keymap('n','<leader>dt',':DapUiToggle<CR>',{noremap=true})

vim.api.nvim_set_keymap('n','<leader>db','DapToggleBreakpoint<CR>',{noremap=true})

vim.api.nvim_set_keymap('n','<leader>dc',':DapContinue<CR>',{noremap=true})

vim.api.nvim_set_keymap('n','<leader>dr',":lua require('dapui).open({reset=true}) <CR>",{noremap=true})
-- float-term

map('n', '<Leader>t', ':FloatermToggle<CR>', { silent = true })
