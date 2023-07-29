-- vim.cmd [[highlight IndentBlanklineIndent1 guibg=#1a2941 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guibg=#122440 gui=nocombine]]
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
  show_end_of_line = true,
  space_char_blankline = " ",
  -- char = "",
  -- char_highlight_list = {
  --   "IndentBlanklineIndent1",
  --   "IndentBlanklineIndent2",
  -- },
  -- space_char_highlight_list = {
  --   "IndentBlanklineIndent1",
  --   "IndentBlanklineIndent2",
  -- },
  show_trailing_blankline_indent = false,
  -- show_current_context = true,
  -- show_current_context_start = true,
}
