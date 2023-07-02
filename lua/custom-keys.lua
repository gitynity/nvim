-- UPdate leader key to ,
vim.g.mapleader = " "

-- fetch keymap
local map = vim.api.nvim_set_keymap

-- Increase or decrease split size using Option key (Alt)
map('n', '<M-S-Right>', ':vertical resize +5<CR>', { silent = true })
map('n', '<M-S-Left>', ':vertical resize -5<CR>', { silent = true })
map('n', '<M-S-Up>', ':resize +5<CR>', { silent = true })
map('n', '<M-S-Down>', ':resize -5<CR>', { silent = true })


-- Switch between windows
map('n', '<M-Tab>', '<C-w>w', { silent = true })

-- Move to the upper line with the left arrow at the beginning of a line
map('n', '<Left>', 'col(".") == 1 ? "k" : "<Left>"', { expr = true })

-- map the key to open tagbar
map('n','<leader><Up>',':TagbarToggle<CR>',{noremap = true, silent = true})

-- map the key to run the command :NvimTreeToggle
map('n', '<leader>n', [[:NvimTreeToggle<CR>]], {})

-- Define the keymap for bufferline cycling
map('n', '<S-Right>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
map('n', '<S-Left>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })

-- Debugger
map('n','<leader>dt',':DapUiToggle<CR>',{noremap=true})
map('n','<leader>db','DapToggleBreakpoint<CR>',{noremap=true})
map('n','<leader>dc',':DapContinue<CR>',{noremap=true})
map('n','<leader>dr',":lua require('dapui).open({reset=true}) <CR>",{noremap=true})

-- float-term
map('n', '<Leader>t', ':FloatermToggle<CR>', { silent = true })
