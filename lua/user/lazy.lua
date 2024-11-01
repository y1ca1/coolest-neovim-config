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
  { "goolord/alpha-nvim" },
  { "karb94/neoscroll.nvim" },
  { "simrat39/symbols-outline.nvim" },
  { "gelguy/wilder.nvim" },
  { "jbyuki/nabla.nvim" },
  { "xiyaowong/transparent.nvim" },

  { "nmac427/guess-indent.nvim" },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  -- {
  --   "folke/noice.nvim",
  --   event = "VeryLazy",
  --   opts = {
  --     -- add any options here
  --   },
  --   dependencies = {
  --     -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
  --     "MunifTanjim/nui.nvim",
  --   },
  -- },

  -- surround
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },

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
  { "maxmx03/fluoromachine.nvim" },

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
  {
    "rmagatti/goto-preview",
    config = function()
      require("goto-preview").setup {}
    end,
  },

  -- Telescope
  { "nvim-telescope/telescope.nvim" },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    config = function(_, opts)
      -- tell treesitter to use the markdown parser for mdx files
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },

  -- Git
  { "lewis6991/gitsigns.nvim" },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "nvim-telescope/telescope.nvim", -- optional
      "sindrets/diffview.nvim", -- optional
      "ibhagwan/fzf-lua", -- optional
    },
    config = true,
  },
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

  -- Coq
  { "whonore/Coqtail" },
  { "tomtomjhj/vscoq.nvim" },
  -- { "tomtomjhj/coq-lsp.nvim" },

  -- Github Copilot
  { "github/copilot.vim" },

  -- ChatGPT
  {
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup {
        api_key_cmd = "/bin/cat /Users/yicai/gpt-api.txt",
      }
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },

  -- colors
  {
    "uga-rosa/ccc.nvim",
    config = function()
      require("ccc").setup {
        -- your configuration comes here
        highlighter = {
          auto_enable = true,
          lsp = true,
        },
      }
    end,
  },

  --- notification plugin
  -- { "rcarriga/nvim-notify" },
}
