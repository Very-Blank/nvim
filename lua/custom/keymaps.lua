return {
  vim.keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next Tab', silent = true }),
  vim.keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Prev Tab', silent = true }),
  vim.keymap.set('n', '<leader>gf', '<cmd>Neotree toggle<cr>', { desc = 'Open NeoTree ', silent = true }),

  vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap-forward)'),
  vim.keymap.set({ 'n', 'x', 'o' }, 'S', '<Plug>(leap-backward)'),
  vim.keymap.set({ 'n', 'x', 'o' }, 'gs', '<Plug>(leap-from-window)'),
  vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' }),
}
