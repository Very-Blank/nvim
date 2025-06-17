return {
	vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap-forward)'),
	vim.keymap.set({ 'n', 'x', 'o' }, 'S', '<Plug>(leap-backward)'),
	vim.keymap.set({ 'n', 'x', 'o' }, 'gs', '<Plug>(leap-from-window)'),
	vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' }),
	vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]),
	vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]),
	vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]),
	vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]),
}
