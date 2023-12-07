local Util = require("lazyvim.util")
return {
  "folke/edgy.nvim",
  optional = true,
  opts = function(_, opts)
    local edgy_idx = Util.plugin.extra_idx("ui.edgy")
    local aerial_idx = Util.plugin.extra_idx("editor.aerial")

    if edgy_idx and edgy_idx > aerial_idx then
      Util.warn("The `edgy.nvim` extra must be **imported** before the `aerial.nvim` extra to work properly.", {
        title = "LazyVim",
      })
    end

    opts.right = opts.right or {}
    table.insert(opts.right, {
      title = "Aerial",
      ft = "aerial",
      pinned = true,
      open = "AerialOpen",
    })
  end,
}
