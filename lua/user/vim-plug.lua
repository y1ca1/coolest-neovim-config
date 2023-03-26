local call = vim.call
local cmd = vim.cmd
local Plug = vim.fn["plug#"]
local PATH = "~/.config/nvim/plugged"

call("plug#begin", PATH)
Plug "dense-analysis/ale"
Plug "jez/vim-better-sml"
Plug "itchyny/calendar.vim"
Plug "daskol/nvim-bnf"
Plug "tpope/vim-surround"
Plug "tpope/vim-repeat"
Plug "f-person/git-blame.nvim"
-- Plug "vim-scripts/bnf.vim"
-- Plug("daskol/nvim-bnf", { ["do"] = "go install ./cmd/nvim-nbf" })
-- Plug 'mg979/vim-visual-multi'
call "plug#end"
