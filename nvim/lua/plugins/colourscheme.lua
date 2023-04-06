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
      local notify = require("notify")
      notify.setup({
        background_colour = "#000000",
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
