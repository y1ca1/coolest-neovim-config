local servers = {
  "lua_ls",
  "cssls",
  "html",
  "ts_ls",
  "pyright",
  "bashls",
  "jsonls",
  "yamlls",
  "rust_analyzer",
  "ocamllsp",
  "clangd",
  "marksman",
  "texlab",
  "pest_ls",
}

local settings = {
  ui = {
    border = "none",
    icons = {
      package_installed = "◍",
      package_pending = "◍",
      package_uninstalled = "◍",
    },
  },
  log_level = vim.log.levels.DEBUG,
  max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup {
  ensure_installed = servers,
  automatic_installation = true,
}

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local opts = {}

for _, server in pairs(servers) do
  opts = {
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
  }

  server = vim.split(server, "@")[1]

  local require_ok, conf_opts = pcall(require, "user.lsp.settings." .. server)
  if require_ok then
    opts = vim.tbl_deep_extend("force", conf_opts, opts)
  end

  -- additional setup for texlab
  if server == "texlab" then
    local executable = "zathura"
    local args = {
      "--synctex-editor-command",
      [[nvim-texlabconfig -file '%{input}' -line %{line}]],
      "--synctex-forward",
      "%l:1:%f",
      "%p",
    }
    local opt = {
      settings = {
        texlab = {
          forwardSearch = {
            executable = executable,
            args = args,
          },
        },
      },
    }
    opts = vim.tbl_deep_extend("force", opt, opts)
  end

  -- additional setup for ocaml
  if server == "ocamllsp" then
    local filetypes = { "ocaml", "ocaml.menhir", "ocaml.interface", "ocaml.ocamllex", "reason", "dune" }
    local root_dir =
      lspconfig.util.root_pattern("*.opam", "esy.json", "package.json", ".git", "dune-project", "dune-workspace")
    local opt = {
      cmd = { "/Users/yicai/.opam/default/bin/ocamllsp" },
      filetypes = filetypes,
      root_dir = root_dir,
    }
    opts = vim.tbl_deep_extend("force", opt, opts)
  end

  lspconfig[server].setup(opts)
end

-- additional setup for dafny
opts = {
  on_attach = require("user.lsp.handlers").on_attach,
  capabilities = require("user.lsp.handlers").capabilities,
}
local filetypes = { "dfy", "dafny" }
local opt = {
  filetypes = filetypes,
  cmd = { "dotnet", "/home/yicai/.bin/dafny/DafnyLanguageServer.dll" },
}
opts = vim.tbl_deep_extend("force", opt, opts)
lspconfig.dafny.setup(opts)

-- additional setup for sml
opts = {
  on_attach = require("user.lsp.handlers").on_attach,
  capabilities = require("user.lsp.handlers").capabilities,
}
filetypes = { "sml" }
opt = {
  filetypes = filetypes,
  cmd = { "millet" },
  single_file_support = true,
}
opts = vim.tbl_deep_extend("force", opt, opts)
lspconfig.millet.setup(opts)
