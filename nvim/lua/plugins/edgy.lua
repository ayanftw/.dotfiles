return {
  "folke/edgy.nvim",
  -- optional = true,
  opts = function(_, opts)
    opts.exit_when_last = true
    for _, pos in ipairs({ "top", "bottom", "left", "right" }) do
      opts[pos] = opts[pos] or {}
      table.insert(opts[pos], {
        ft = "trouble",
        filter = function(_buf, win)
          return vim.w[win].trouble
            and vim.w[win].trouble.position == pos
            and vim.w[win].trouble.type == "split"
            and vim.w[win].trouble.relative == "editor"
            and not vim.w[win].trouble_preview
        end,
      })
    end
  end,
}
