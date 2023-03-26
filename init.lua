require "user.impatient"
require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.autocommands"
require "user.colorscheme"
require "user.cmp"
require "user.telescope"
require "user.gitsigns"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.illuminate"
require "user.indentline"
require "user.alpha"
require "user.lsp"
require "user.dap"
require "user.rusttools"
require "user.neoscroll"
require "user.symbols-outline"
require "user.wilder"
require "user.vim-plug"

if vim.g.neovide then
  vim.g.neovide_input_use_logo = 1 -- enable use of the logo (cmd) key
  -- Put anything you want to happen only in Neovide here
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_cursor_animation_length = 0
  -- vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_cursor_animate_command_line = false
  vim.o.guifont = "RecMonoCasual Nerd Font:h14"
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_refresh_rate_idle = 5
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.25)
  end)
  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1 / 1.25)
  end)
end
