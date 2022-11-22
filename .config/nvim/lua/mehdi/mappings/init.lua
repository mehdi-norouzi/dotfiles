vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('i', 'jk', '<Esc>', opts)

-- print the date in current buffer
map("n", "<leader>n", "Go<Esc>:r!echo $(date)<cr>0i## <Esc>o"--[[ :r!echo $(date)<cr>0i## <Esc>o" ]], opts)

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fF", ":Telescope file_browser<CR>", opts)
map("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fp", ":Telescope projects<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR><Esc>", opts)
map("n", "<leader>fs", ":Telescope lsp_document_symbols<CR><Esc>", opts)
map("n", "<leader>fS", ":Telescope lsp_dynamic_workspace_symbols<CR><Esc>", opts)
map("n", "<leader>fv", ":Telescope find_files cwd=~/.config/nvim<CR>", opts)
map("n", "<leader>fn", ":Telescope find_files cwd=~/notes<CR>", opts)

-- center in halfpage scroll
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

-- copy pasta
map("x", "<leader>p", '"_dP', opts)
map("n", "<leader>p", '"*p', opts) -- paste from system clipboard
map("n", "<leader>y", '"+y', opts) -- copy to system clipboard
map("v", "<leader>y", '"+y', opts) -- copy to system clipboard

-- Undotree
map("n", "<leader>u", "<cmd>UndotreeToggle<cr>", opts)

-- buffers navigation
map("n", "<leader>x", "<cmd>bdelete!<cr>", opts)
map("n", "<leader>j", "<cmd>bn<cr>", opts)
map("n", "<leader>k", "<cmd>bp<cr>", opts)

-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- DAP
map("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
map("n", "<F5>", "<cmd>lua require'dap'.continue()<cr>", opts)
map("n", "<F6>", "<cmd>lua require'dap'.step_into()<cr>", opts)
map("n", "<F7>", "<cmd>lua require'dap'.step_over()<cr>", opts)
map("n", "<F8>", "<cmd>lua require'dap'.step_out()<cr>", opts)
map("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
map("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
map("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
map("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- toggleterm
map("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>", opts)
map("n", "<leader>tf", "<cmd>ToggleTerm size=20 direction=float<cr>", opts)

-- Lsp restart
map("n", "<leader>lr", "<cmd>LspRestart<cr>", opts)

-- lazygit
map("n", "<leader>gg", "<cmd>LazyGit<cr>", opts)

-- harpoon
map("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>", opts)
map("n", "<leader>hl", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
map("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", opts)
map("n", "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", opts)

-- netrw
map("n", "<leader>fm", "<cmd>Ex<cr>", opts)

-- building mcu projects
map("n", "<leader>ma", "<cmd>wa<cr><cmd>! make all -j4<cr>", opts)
map("n", "<leader>mf", "<cmd>wa<cr><cmd>! make flash-st -j4<cr>", opts)
map("n", "<leader>mca", "<cmd>wa<cr><cmd>! make clean && make all -j4<cr>", opts)
