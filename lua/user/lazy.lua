local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
  { "nvim-lua/plenary.nvim" }, -- Useful lua functions used by lots of plugins
  { "windwp/nvim-autopairs" }, -- Autopairs, integrates with both cmp and treesitter
  { "numToStr/Comment.nvim" },
  { "JoosepAlviste/nvim-ts-context-commentstring" },
  { "kyazdani42/nvim-web-devicons" },
  { "kyazdani42/nvim-tree.lua" },
  { "akinsho/bufferline.nvim" },
  { "moll/vim-bbye" },
  { "nvim-lualine/lualine.nvim" },
  { "akinsho/toggleterm.nvim" },
  { "ahmedkhalf/project.nvim" },
  { "lewis6991/impatient.nvim" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "goolord/alpha-nvim" },
  { "karb94/neoscroll.nvim" },
  { "simrat39/symbols-outline.nvim" },
  { "gelguy/wilder.nvim" },
  { "jbyuki/nabla.nvim" },
  { "xiyaowong/transparent.nvim" },

  { "nmac427/guess-indent.nvim" },

  {
    "ellisonleao/glow.nvim",
    config = function()
      require("glow").setup()
    end,
  }, -- Markdown previewer

  {
    "f3fora/nvim-texlabconfig",
    config = function()
      require("texlabconfig").setup()
    end,
    ft = { "tex", "bib" }, -- for lazy loading
    -- run = "go build"
    build = "go build -o ~/.bin/",
  },

  -- Colorschemes
  { "lunarvim/synthwave84.nvim" },
  { "folke/tokyonight.nvim" },
  { "lunarvim/darkplus.nvim" },

  -- cmp plugins
  { "hrsh7th/nvim-cmp" }, -- The completion plugin
  { "hrsh7th/cmp-nvim-lsp" },
  { "saadparwaiz1/cmp_luasnip" }, -- snippet completions
  { "hrsh7th/cmp-nvim-lua" },
  { "hrsh7th/cmp-nvim-lsp-signature-help" },
  { "hrsh7th/cmp-vsnip" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/vim-vsnip" },
  -- snippets
  { "L3MON4D3/LuaSnip" }, --snippet engine
  { "rafamadriz/friendly-snippets" }, -- a bunch of snippets to use

  -- LSP
  -- { "williamboman/nvim-lsp-installer" }, -- simple to language server installer
  { "neovim/nvim-lspconfig" }, -- enable LSP
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "jose-elias-alvarez/null-ls.nvim" }, -- for formatters and linters
  { "RRethy/vim-illuminate" },

  -- Telescope
  { "nvim-telescope/telescope.nvim" },

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter" },

  -- Git
  { "lewis6991/gitsigns.nvim" },
  { "TimUntersberger/neogit" },
  { "sindrets/diffview.nvim" },

  -- DAP
  { "mfussenegger/nvim-dap" },
  { "rcarriga/nvim-dap-ui" },
  { "ravenxrz/DAPInstall.nvim" },

  -- Rust
  { "simrat39/rust-tools.nvim" },

  -- Haskell
  {
    "mrcjkb/haskell-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim", -- optional
    },
    branch = "1.x.x", -- recommended
  },

  -- Github Copilot
  { "github/copilot.vim" },

  -- ChatGPT
  {
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup {
        api_key_cmd = "cat /home/yicai/gpt-api.txt",
      }
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
}
