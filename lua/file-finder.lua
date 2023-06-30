-- search files, even hidden ones
vim.keymap.set('n', '<leader>ff', ':lua require"telescope.builtin".find_files({no_ignore=true, hidden=true})<CR>', {})
-- ripgrep files, respects gitignore
vim.keymap.set('n', '<leader>fg', ':lua require"telescope.builtin".live_grep()<CR>', {})

function telescope_workspace_symbols()
	local workspace = vim.fn.input("Workspace symbol to search: ")
	require('telescope.builtin').lsp_workspace_symbols({ query = workspace })
end

vim.api.nvim_set_keymap('n', 'fs', ':lua telescope_workspace_symbols()<CR>', { noremap = true, silent = true })
