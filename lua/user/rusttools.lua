local rt = require "rust-tools"

rt.setup {
  server = {
		settings = {
			["rust-analyzer"] = {
				check = {
					command = "clippy"
				},
        diagnostics = {
          enable = true,
          disabled = {"unlinked-file"}
        },
			},
		},
    on_attach = require("user.lsp.handlers").on_attach,
  },
}
