return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          nls.builtins.formatting.beautysh,
          nls.builtins.formatting.stylua,
          nls.builtins.formatting.djhtml,
          nls.builtins.formatting.black,
          nls.builtins.formatting.ruff,
          nls.builtins.formatting.prettier,
          nls.builtins.formatting.terraform_fmt,
          nls.builtins.diagnostics.eslint_d,
          nls.builtins.code_actions.eslint_d,
          nls.builtins.diagnostics.hadolint,
          nls.builtins.diagnostics.ruff,
          nls.builtins.completion.spell,
        },
      }
    end,
  },
}
