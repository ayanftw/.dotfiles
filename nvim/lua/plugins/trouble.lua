return {
  "folke/trouble.nvim",
  -- opts will be merged with the parent spec
  opts = {
    modes = {
      current_buffer_diagnostics = {
        auto_open = true,
        mode = "diagnostics",
        win = { position = "bottom" },
        filter = { buf = 0 },
      },
      symbols = {
        desc = "document symbols",
        mode = "lsp_document_symbols",
        focus = false,
        auto_open = true,
        win = { position = "right" },
        filter = {
          -- remove Package since luals uses it for control flow structures
          ["not"] = { ft = "lua", kind = "Package" },
          any = {
            -- all symbol kinds for help / markdown files
            ft = { "help", "markdown" },
            -- default set of symbol kinds
            kind = {
              "Class",
              "Constructor",
              "Enum",
              "Field",
              "Function",
              "Interface",
              "Method",
              "Module",
              "Namespace",
              "Package",
              "Property",
              "Struct",
              "Trait",
            },
          },
        },
      },
      lsp = { auto_open = true, win = { position = "right" }, focus = false },
    },
  },
}
