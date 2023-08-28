-- Synthwave 84' options
-- require("synthwave84").setup {
--   glow = {
--     error_msg = true,
--     type2 = true,
--     func = true,
--     keyword = true,
--     operator = true,
--     buffer_current_target = true,
--     buffer_visible_target = true,
--     buffer_inactive_target = true,
--   },
-- }

local fm = require "fluoromachine"

local function spiderman(_, d)
  return {
    bg = "#142032",
    alt_bg = d("#181711", 20),
    currentline = "#181711",
    selection = "#254473",
    comment = "#505ca2",
    cursor_fg = "#282a36",
    cursor_bg = "#8BA7A7",
    sign_add = "#069153",
    sign_change = "#ff8b39",
    sign_delete = "#eb5760",
    error = "#eb5760",
    warning = "#f37a3f",
    info = "#19bce1",
    hint = "#19bce1",
    other = "#e89ffa",
    blankline = "#314f7b",
    active_blankline = "#7E0C4D",
    inlay_hint = "#362164",
    cyan = "#8fd6af",
    red = "#c31e3e",
    yellow = "#e1b556",
    green = "#72f1b8",
    orange = "#f37a3f",
    pink = "#ff627c",
    purple = "#9c3f72",
  }
end

local function icecream(_, d)
  return {
    bg = "#171f1b",
    alt_bg = d("#171f1b", 20),
    currentline = "#142a46",
    selection = "#254473",
    comment = "#3c6679",
    cursor_fg = "#282a36",
    cursor_bg = "#8BA7A7",
    sign_add = "#069153",
    sign_change = "#ff8b39",
    sign_delete = "#eb5760",
    error = "#eb5760",
    warning = "#f37a3f",
    info = "#11829c",
    hint = "#19bce1",
    other = "#e89ffa",
    blankline = "#314f7b",
    active_blankline = "#7E0C4D",
    inlay_hint = "#362164",
    cyan = "#eff0d9",
    red = "#c31e3e",
    pink = "#f9ec8f",
    yellow = "#94dbb6",
    orange = "#dd6c24",
    green = "#f8a61b",
    purple = "#f798a9",
  }
end

fm.setup {
  glow = true,
  theme = "fluoromachine",
  -- transparent = "full",
  overrides = {
    ["@type"] = { italic = true, bold = true },
    ["@function"] = { italic = false, bold = false },
    ["@comment"] = { italic = true },
    ["@keyword"] = { italic = false, bold = true },
    ["@constant"] = { italic = false, bold = false },
    ["@variable"] = { italic = true },
    ["@field"] = { italic = true },
    ["@parameter"] = { italic = true },
  },
  colors = icecream,
}

-- require("tokyonight").setup {
--   -- your configuration comes here
--   -- or leave it empty to use the default settings
--   style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
-- }

-- local colorscheme = "tokyonight"
-- local colorscheme = "synthwave84"
local colorscheme = "fluoromachine"

local status_ok, _ = pcall(vim.cmd.colorscheme, colorscheme)
if not status_ok then
  return
end
