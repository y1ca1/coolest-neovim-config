local rt = require("rust-tools")

rt.setup(
  {
    server = {
      on_attach = require("user.lsp.handlers").on_attach },
  }
)
