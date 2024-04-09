return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
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
  },
}
