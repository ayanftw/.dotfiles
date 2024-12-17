return {
  {
    -- "WhoIsSethDaniel/mason-tool-installer.nvim",
    "williamboman/mason.nvim",
    opts = {
      auto_update = true,
      run_on_start = true,
      start_delay = 3000,
      ensure_installed = {
        "biome",
        "debugpy",
        "djlint",
        "gitui",
        "helm-ls",
        "js-debug-adapter",
        "prettierd",
        "ruff",
        "ruff-lsp",
        "vulture",
      },
    },
  },
}
