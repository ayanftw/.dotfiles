vim.g["copilot_no_tab_map"] = true
vim.g["copilot_assume_mapped"] = true

vim.keymap.set("i", "<C-e>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
return {
  {
    "github/copilot.vim",
    lazy = false,
  },
}
