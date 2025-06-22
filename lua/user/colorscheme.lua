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
local onedarkpro = require "onedarkpro"
local catppuccin = require "catppuccin"

local function spiderman(_, color)
  return {
    bg = "#142032",
    alt_bg = color.darken("#181711", 20),
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

local function icecream(_, color)
  return {
    bg = "#171f1b",
    alt_bg = color.darken("#171f1b", 20),
    currentline = "#142a46",
    selection = "#254473",
    comment = "#3c6679",
    cursor_fg = "#282a36",
    cursor_bg = "#8BA7A7",
    sign_add = "#069153",
    sign_change = "#ff8b39",
    sign_delete = "#eb5760",
    error = "#f87e93",
    warning = "#f37a3f",
    info = "#11829c",
    hint = "#19bce1",
    other = "#e89ffa",
    blankline = "#314f7b",
    active_blankline = "#7E0C4D",
    inlay_hint = "#362164",
    cyan = "#eff0d9",
    red = "#df3153",
    pink = "#f9ec8f",
    yellow = "#94dbb6",
    orange = "#dd6c24",
    green = "#f8a61b",
    purple = "#f798a9",
  }
end

local function github_dark(_, color)
  return {
    bg = "#0d1117",
    alt_bg = color.darken("#0d1117", 20),
    currentline = "#0d1117",
    selection = "#1f6feb",
    comment = "#8b949e",
    cursor_fg = "#282a36",
    cursor_bg = "#8BA7A7",
    sign_add = "#28a745",
    sign_change = "#f39c12",
    sign_delete = "#d73a49",
    error = "#d73a49",
    warning = "#d73a49",
    info = "#0366d6",
    hint = "#0366d6",
    other = "#6e40c9",
    blankline = "#314f7b",
    active_blankline = "#7E0C4D",
    inlay_hint = "#362164",
    cyan = "#79c0ff",
    red = "#ff7b72",
    yellow = "#ffd369",
    green = "#9cd873",
    orange = "#ff9e64",
    pink = "#ff7b72",
    purple = "#bb9af7",
  }
end

local function tokyonight(_, color)
  return {
    bg = "#1a1b26",
    alt_bg = color.darken("#1a1b26", 20),
    currentline = "#1a1b26",
    selection = "#1f2335",
    comment = "#565f89",
    cursor_fg = "#282a36",
    cursor_bg = "#8BA7A7",
    sign_add = "#38d8b2",
    sign_change = "#f3b3b1",
    sign_delete = "#ff7b72",
    error = "#ff7b72",
    warning = "#f3b3b1",
    info = "#78d1e1",
    hint = "#78d1e1",
    other = "#c0caf5",
    blankline = "#314f7b",
    active_blankline = "#7E0C4D",
    inlay_hint = "#362164",
    cyan = "#78d1e1",
    red = "#ff7b72",
    yellow = "#e0af68",
    green = "#38d8b2",
    orange = "#ff9e64",
    pink = "#ff7b72",
    purple = "#c0caf5",
  }
end

local function brown(_, color)
  return {
    bg = "#1a1b26",
    alt_bg = color.darken("#1a1b26", 20),
    currentline = "#1a1b26",
    selection = "#1f2335",
    comment = "#565f89",
    cursor_fg = "#282a36",
    cursor_bg = "#8BA7A7",
    sign_add = "#38d8b2",
    sign_change = "#f3b3b1",
    sign_delete = "#ff7b72",
    error = "#ff7b72",
    warning = "#f3b3b1",
    info = "#78d1e1",
    hint = "#78d1e1",
    other = "#c0caf5",
    blankline = "#314f7b",
    active_blankline = "#7E0C4D",
    inlay_hint = "#362164",
    cyan = "#78d1e1",
    red = "#ff7b72",
    yellow = "#f0cb95",
    green = "#38d8b2",
    orange = "#ff9e64",
    pink = "#b18970",
    purple = "#afb0ed",
  }
end

local function overrides(c, color)
  return {
    ["@type"] = { italic = true, bold = true },
    ["@function"] = { italic = false, bold = false },
    ["@comment"] = { italic = true },
    ["@keyword"] = { italic = false, bold = true },
    ["@constant"] = { italic = false, bold = false },
    ["@variable"] = { italic = true },
    ["@field"] = { italic = true },
    ["@parameter"] = { italic = true },
  }
end

fm.setup {
  glow = true,
  theme = "fluoromachine",
  -- transparent = true,
  overrides = overrides,
  -- colors = icecream,
  -- colors = spiderman,
  -- colors = github_dark,
  -- colors = tokyonight,
  colors = brown,
}

-- require("tokyonight").setup {
--   -- your configuration comes here
--   -- or leave it empty to use the default settings
--   style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
-- }

onedarkpro.setup {
  colors = {}, -- Override default colors or create your own
  highlights = {}, -- Override default highlight groups or create your own
  styles = { -- For example, to apply bold and italic, use "bold,italic"
    types = "bold", -- Style that is applied to types
    methods = "NONE", -- Style that is applied to methods
    numbers = "NONE", -- Style that is applied to numbers
    strings = "italic", -- Style that is applied to strings
    comments = "NONE", -- Style that is applied to comments
    keywords = "bold", -- Style that is applied to keywords
    constants = "NONE", -- Style that is applied to constants
    functions = "NONE", -- Style that is applied to functions
    operators = "NONE", -- Style that is applied to operators
    variables = "NONE", -- Style that is applied to variables
    parameters = "italic", -- Style that is applied to parameters
    conditionals = "NONE", -- Style that is applied to conditionals
    virtual_text = "NONE", -- Style that is applied to virtual text
  },
  filetypes = { -- Override which filetype highlight groups are loaded
    c = true,
    comment = true,
    go = true,
    html = true,
    java = true,
    javascript = true,
    json = true,
    lua = true,
    markdown = true,
    php = true,
    python = true,
    ruby = true,
    rust = true,
    scss = true,
    toml = true,
    typescript = true,
    typescriptreact = true,
    vue = true,
    xml = true,
    yaml = true,
  },
  plugins = { -- Override which plugin highlight groups are loaded
    aerial = true,
    barbar = true,
    codecompanion = true,
    copilot = true,
    dashboard = true,
    flash_nvim = true,
    gitsigns = true,
    hop = true,
    indentline = true,
    leap = true,
    lsp_saga = true,
    lsp_semantic_tokens = true,
    marks = true,
    mini_diff = true,
    mini_icons = true,
    mini_indentscope = true,
    neotest = true,
    neo_tree = true,
    nvim_cmp = true,
    nvim_bqf = true,
    nvim_dap = true,
    nvim_dap_ui = true,
    nvim_hlslens = true,
    nvim_lsp = true,
    nvim_navic = true,
    nvim_notify = true,
    nvim_tree = true,
    nvim_ts_rainbow = true,
    op_nvim = true,
    packer = true,
    persisted = true,
    polygot = true,
    rainbow_delimiters = true,
    render_markdown = true,
    startify = true,
    telescope = true,
    toggleterm = true,
    treesitter = true,
    trouble = true,
    vim_ultest = true,
    which_key = true,
    vim_dadbod_ui = true,
  },

  options = {
    cursorline = false, -- Use cursorline highlighting?
    transparency = true, -- Use a transparent background?
    terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
    lualine_transparency = false, -- Center bar transparency?
    highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
  },
}

catppuccin.setup {
  flavour = "auto", -- latte, frappe, macchiato, mocha
  background = { -- :h background
    light = "latte",
    dark = "mocha",
  },
  transparent_background = true, -- disables setting the background color.
  show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
  term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
  dim_inactive = {
    enabled = false, -- dims the background color of inactive window
    shade = "dark",
    percentage = 0.15, -- percentage of the shade to apply to the inactive window
  },
  no_italic = false, -- Force no italic
  no_bold = false, -- Force no bold
  no_underline = false, -- Force no underline
  styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" }, -- Change the style of comments
    conditionals = { "italic" },
    loops = {},
    functions = {},
    keywords = { "bold" },
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = { "bold" },
    operators = {},
    -- miscs = {}, -- Uncomment to turn off hard-coded styles
  },
  color_overrides = {},
  custom_highlights = {},
  default_integrations = true,
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    notify = false,
    mini = {
      enabled = true,
      indentscope_color = "",
    },
    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  },
}

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"

-- local colorscheme = "tokyonight"
-- local colorscheme = "synthwave84"
local colorscheme = "fluoromachine"
local colorscheme = "onedark"
local colorscheme = "catppuccin"

local status_ok, _ = pcall(vim.cmd.colorscheme, colorscheme)
if not status_ok then
  return
end
