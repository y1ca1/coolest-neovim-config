-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Miss from VS Code
keymap("n", "<C-s>", "<cmd>lua vim.lsp.buf.format()<cr>:w<CR>", opts) -- Save
keymap("n", "<C-a>", "ggVG", opts) -- Select all
keymap("v", "<C-c>", '"+y', opts) -- Copy
keymap("n", "<C-d>", "yyp", opts) -- Duplicate
keymap("n", "<M-v>", '"+P', opts) -- Paste normal mode
keymap("v", "<M-v>", '"+P', opts) -- Paste visual mode
keymap("c", "<M-v>", "<C-R>+", opts) -- Paste command mode
keymap("i", "<M-v>", '<ESC>l"+Pli', opts) -- Paste insert mode
keymap("n", "<M-Up>", ":m .-2<CR>==", opts) -- Move up
keymap("n", "<M-Down>", ":m .+1<CR>==", opts) -- Move down
keymap("v", "<M-Up>", ":m '<-2<CR>gv=gv", opts) -- Move up
keymap("v", "<M-Down>", ":m '>+1<CR>gv=gv", opts) -- Move down

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "}", ":bnext<CR>", opts)
keymap("n", "{", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<S-w>", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- SymbolsOutline
keymap("n", "<leader>o", ":SymbolsOutline<CR>", opts)

-- markdown previewer
keymap("n", "<leader>g", ":Glow<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fr", ":Telescope oldfiles<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- Git
-- keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)
keymap("n", "<leader>gg", ":Neogit<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- Lsp
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)

-- build tex files
keymap("n", "<leader>bt", ":w<CR>:TexlabBuild<cr>", opts)
keymap("n", "<leader>p", ":<cmd>lua require'nabla'.popup()<cr>", opts)

-- copilot
keymap("i", "<M-Right>", 'copilot#Accept("<CR>")', { silent = true, expr = true, replace_keycodes = false })
keymap("i", "<M-[>", "copilot#Previous()", { silent = true, expr = true })
keymap("i", "<M-]>", "copilot#Next()", { silent = true, expr = true })
