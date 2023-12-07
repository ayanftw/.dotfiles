local Util = require("lazyvim.util")

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      Util.on_load("telescope.nvim", function()
        require("telescope").load_extension("aerial")
      end)
      vim.list_extend(opts.ensure_installed, {
        "cmake",
        "css",
        "dockerfile",
        "html",
        "htmldjango",
        "graphql",
        "json",
        "json5",
        "scss",
        "svelte",
        "terraform",
        "tsx",
        "typescript",
      })
    end,
    keys = {
      {
        "<leader>ss",
        "<cmd>Telescope aerial<cr>",
        desc = "Goto Symbol (Aerial)",
      },
    },
  },
}
