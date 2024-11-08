vim.diagnostic.config {
  virtual_text = false, -- Disable inline error messages
  update_in_insert = false, -- Do not update diagnostics in insert mode
  severity_sort = true, -- Sort diagnostics by severity
  underline = true, -- Avoid underlining text for errors
  signs = true, -- Show signs in the sign column (optional, for quick reference)
}

vim.fn.sign_define('DiagnosticSignError', { text = ' ', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = ' ', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = ' ', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '󰌵', texthl = 'DiagnosticSignHint' })
