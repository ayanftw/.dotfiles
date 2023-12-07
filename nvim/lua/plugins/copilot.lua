return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      copilot_node_command = vim.fn.expand("$HOME/.local/share/fnm/aliases/default/bin/node"),
      suggestion = { enabled = false },
      panel = {
        enabled = false,
      },
    },
  },
}
