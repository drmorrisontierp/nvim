return {
  "akinsho/toggleterm.nvim",
  version = "*",
  --config = true,
  config = function()
    local toggleterm = require("toggleterm")
    toggleterm.setup({
      open_mapping = [[<C-b>]],
      hide_numbers = true, -- hide the number column in toggleterm buffers
      shade_filetypes = {},
      autochdir = false, -- when neovim changes it current directory the terminal will change it's own when next it's opened
      highlights = {
        -- highlights which map to a highlight group name and a table of it's values
        Normal = {
          guibg = "<VALUE-HERE>",
        },
        NormalFloat = {
          link = "Normal",
        },
        FloatBorder = {
          guifg = "<VALUE-HERE>",
          guibg = "<VALUE-HERE>",
        },
      },
      float_opts = {
        -- The border key is *almost* the same as 'nvim_open_win'
        -- see :h nvim_open_win for details on borders however
        -- the 'curved' border is a custom border type
        -- not natively supported but implemented in this plugin.
        border = "single",
        -- like `size`, width and height can be a number or function which is passed the current terminal
        width = 40,
        height = 40,
        winblend = 3,
        zindex = 3,
      },
      shell = vim.o.shell,
    })
  end,
}
