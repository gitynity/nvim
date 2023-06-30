-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- load on startup, close when file is opened
vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_auto_close = 1

vim.g.nvim_tree_auto_resize = 1


vim.cmd('autocmd VimLeavePre * :NvimTreeClose')

require('nvim-tree').setup{}
