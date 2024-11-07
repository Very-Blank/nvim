-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      --inside the function
      require('bufferline').setup {
        options = {
          separator_style = 'slope',
        },
      }
    end,
  },

  {
    'startup-nvim/startup.nvim',
    requires = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
    config = function()
      require('startup').setup { theme = 'dashboard' }
    end,
  },

  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
  },

  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    keys = {
      {
        '<leader>xx',
        '<cmd>Trouble diagnostics toggle<cr>',
        desc = 'Diagnostics (Trouble)',
      },
      {
        '<leader>xX',
        '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
        desc = 'Buffer Diagnostics (Trouble)',
      },
      {
        '<leader>cs',
        '<cmd>Trouble symbols toggle focus=false<cr>',
        desc = 'Symbols (Trouble)',
      },
      {
        '<leader>cl',
        '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
        desc = 'LSP Definitions / references / ... (Trouble)',
      },
      {
        '<leader>xL',
        '<cmd>Trouble loclist toggle<cr>',
        desc = 'Location List (Trouble)',
      },
      {
        '<leader>xQ',
        '<cmd>Trouble qflist toggle<cr>',
        desc = 'Quickfix List (Trouble)',
      },
    },
  },
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('nvim-tree').setup {}
    end,
  },
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      -- Enable bold keywords.
      bold_keywords = false,
      -- Enable italic comments.
      italic_comments = true,
      -- Enable editor background transparency.
      transparent = {
        -- Enable transparent background.
        bg = false,
        -- Enable transparent background for floating windows.
        float = false,
      },
      -- Enable brighter float border.
      bright_border = false,
      -- Reduce the overall amount of blue in the theme (diverges from base Nord).
      reduced_blue = true,
      -- Swap the dark background with the normal one.
      swap_backgrounds = false,
      -- Cursorline options.  Also includes visual/selection.
      cursorline = {
        -- Bold font in cursorline.
        bold = false,
        -- Bold cursorline number.
        bold_number = true,
        -- Available styles: 'dark', 'light'.
        theme = 'dark',
        -- Blending the cursorline bg with the buffer bg.
        blend = 0.85,
      },
      noice = {
        -- Available styles: `classic`, `flat`.
        style = 'classic',
      },
      telescope = {
        -- Available styles: `classic`, `flat`.
        style = 'flat',
      },
      leap = {
        -- Dims the backdrop when using leap.
        dim_backdrop = false,
      },
      ts_context = {
        -- Enables dark background for treesitter-context window
        dark_background = true,
      },
    },
    config = function()
      require('nordic').load()
    end,
  },
}
