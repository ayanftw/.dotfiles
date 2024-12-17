return {
  "stevearc/conform.nvim",
  dependencies = { "mason.nvim" },
  lazy = true,
  opts = function()
    local opts = {
      default_format_opts = {
        timeout_ms = 3000,
        async = false,           -- not recommended to change
        quiet = false,           -- not recommended to change
        lsp_format = "fallback", -- not recommended to change
      },
      formatters_by_ft = {
        htmldjango = { "djlint" },
        javascript = { "biome" },
        markdown = { { "prettierd", "prettier" } },
        python = { "ruff_format" },
        svelte = { "biome", "prettier" },
      },
    }
    return opts
  end,
}
