return {
  -- add nightfox
  {
    "EdenEast/nightfox.nvim",
    event = "VeryLazy",
    config = function()
      local nightfox = require("nightfox")
      nightfox.setup({
        options = {
          transparent = true,
        },
      })
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordfox",
    },
  },
}
