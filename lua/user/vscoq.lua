vim.g.loaded_coqtail = 1
vim.g["coqtail#supported"] = 0
require'vscoq'.setup {
  vscoq = {
    proof = {
      -- In manual mode, don't move the cursor when stepping forward/backward a command
      -- cursor = { sticky = false },
    },
  },
  lsp = {
    on_attach = function(client, bufnr)
      -- your mappings, etc

      -- In manual mode, use ctrl-alt-{j,k,l} to step.
      vim.keymap.set({'n', 'i'}, '<C-M-j>', '<Cmd>VsCoq stepForward<CR>', { buffer = bufnr })
      vim.keymap.set({'n', 'i'}, '<C-M-k>', '<Cmd>VsCoq stepBackward<CR>', { buffer = bufnr })
      vim.keymap.set({'n', 'i'}, '<C-M-l>', '<Cmd>VsCoq interpretToPoint<CR>', { buffer = bufnr })
    end,
    -- autostart = false, -- use this if you want to manually `:LspStart vscoqtop`.
  },
}
