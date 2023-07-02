-- search files, even hidden ones
vim.keymap.set('n', '<leader>ff', ':lua require"telescope.builtin".find_files({no_ignore=true, hidden=true})<CR>', {})
-- ripgrep files, respects gitignore
vim.keymap.set('n', '<leader>fg', ':lua require"telescope.builtin".live_grep()<CR>', {})
-- search workspace symbols
vim.api.nvim_set_keymap('n', 'fs', ':lua telescope_workspace_symbols()<CR>', { noremap = true, silent = true })

function telescope_workspace_symbols()
	local workspace = vim.fn.input("Workspace symbol to search: ")
	require('telescope.builtin').lsp_workspace_symbols({ query = workspace })
end

-- Set Telescope window settings
vim.cmd([[
  augroup TelescopeTransparent
    autocmd!
    autocmd FileType TelescopePrompt,TelescopeResults set winblend=25
    autocmd FileType TelescopePreview set winhighlight=Normal:TelescopeTransparent,EndOfBuffer:TelescopeTransparent
  augroup END

  hi TelescopeTransparent guibg=none
]])

require('telescope').setup{
  defaults = {
	  wrap_results = true,
	  path_display = 'truncate',
	  layout_strategy = 'horizontal',
	  layout_config = { height = 0.95, preview_width = 0.6, width = 0.9 },
  },
}

