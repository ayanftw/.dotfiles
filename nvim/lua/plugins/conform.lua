return {
  "stevearc/conform.nvim",
  -- optional = true,
  opts = {
    formatters_by_ft = {
      markdown = { { "prettierd", "prettier" } },
      python = { "ruff_format" },
      htmldjango = { "djlint" },
      svelte = { { "prettierd", "prettier" } },
    },
    formatters = {
      shfmt = {
        prepend_args = { "-i", "2", "-ci" },
      },
    },
  },
}
