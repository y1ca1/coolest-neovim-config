local call = vim.call
local cmd = vim.cmd
local Plug = vim.fn['plug#']
local PATH = '~/.config/nvim/plugged'

call('plug#begin', PATH)
Plug 'dense-analysis/ale'
Plug 'jez/vim-better-sml'
Plug 'itchyny/calendar.vim'
-- Plug 'mg979/vim-visual-multi'
call 'plug#end'
