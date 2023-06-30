require("mason").setup()
require("mason-lspconfig").setup()

vim.api.nvim_set_keymap('n', 'gr', ':lua require("telescope.builtin").lsp_references()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gy', ':lua vim.lsp.buf.type_definition()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gk', ':lua vim.lsp.buf.hover()<CR>', {noremap = false, silent = true})
vim.keymap.set('n','gd',vim.lsp.buf.definition,{})

local on_attach = function(_,_)
	vim.keymap.set('n','<leader>ca',vim.lsp.code_action,{})
end
