return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      auto_update = true,
      run_on_start = true,
      start_delay = 3000,
      ensure_installed = {
        "black",
        -- "isort",
        -- "pylama",
        "prettier",
        "ruff-lsp",
        "ruff",
        "djlint",
      },
    },
  },
}
