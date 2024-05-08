-- vim.cmd [[highlight IndentBlanklineIndent1 guibg=#1a2941 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guibg=#122440 gui=nocombine]]

require("ibl").setup {
  exclude = {
    filetypes = {
      "help",
      "packer",
      "NvimTree",
    },
    buftypes = { "terminal", "nofile" },
  },
  -- char = "",
  -- char_highlight_list = {
  --   "IndentBlanklineIndent1",
  --   "IndentBlanklineIndent2",
  -- },
  -- space_char_highlight_list = {
  --   "IndentBlanklineIndent1",
  --   "IndentBlanklineIndent2",
  -- },
  -- show_trailing_blankline_indent = false,
  -- show_current_context = true,
  -- show_current_context_start = true,
}
