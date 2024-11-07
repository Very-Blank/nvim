return {
  vim.keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next Tab', silent = true }),
  vim.keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Prev Tab', silent = true }),
  vim.keymap.set('n', '<leader>gf', '<cmd>Neotree toggle<cr>', { desc = 'Open NeoTree ', silent = true }),
}
