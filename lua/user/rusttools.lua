local rt = require "rust-tools"

rt.setup {
  server = {
		settings = {
			["rust-analyzer"] = {
				check = {
					command = "clippy"
				},
			},
		},
    on_attach = require("user.lsp.handlers").on_attach,
  },
}
