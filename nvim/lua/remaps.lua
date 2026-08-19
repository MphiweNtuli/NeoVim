vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", {desc = 'move selected code block down'})
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", {desc = 'move selected code block up'})
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('x', '<leader>p', "\"_dP")
vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")
vim.keymap.set('v', '<leader>y', "\"+y")
vim.keymap.set('i', 'jk', "<Esc>")
vim.keymap.set('n', '<C-S>', ":update<CR>")

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

--###########################################################################  Headers ##########################################################################################

vim.keymap.set('i', 'fh', "nothing", { desc = 'Will past a header'})

--###########################################################################  Terminal/window navigation ##########################################################################################

vim.keymap.set("t", "<A-h>", "<C-\\><C-N><C-w>h", {desc = 'Navigate window Left'})
vim.keymap.set("t", "<A-j>", "<C-\\><C-N><C-w>j", {desc = 'Navigate window Down'})
vim.keymap.set("t", "<A-k>", "<C-\\><C-N><C-w>k", {desc = 'Navigate window UP'})
vim.keymap.set("t", "<A-l>", "<C-\\><C-N><C-w>l", {desc = 'Navigate window Right'})

vim.keymap.set("n", "<A-h>", "<C-w>h", {desc = 'Navigate window Left'})
vim.keymap.set("n", "<A-j>", "<C-w>j", {desc = 'Navigate window Down'})
vim.keymap.set("n", "<A-k>", "<C-w>k", {desc = 'Navigate window UP'})
vim.keymap.set("n", "<A-l>", "<C-w>l", {desc = 'Navigate window Right'})

vim.keymap.set("i", "<A-h>", "<C-\\><C-w>h", {desc = 'Navigate window Left'})
vim.keymap.set("i", "<A-j>", "<C-\\><C-w>j", {desc = 'Navigate window Down'})
vim.keymap.set("i", "<A-k>", "<C-\\><C-w>k", {desc = 'Navigate window UP'})
vim.keymap.set("i", "<A-l>", "<C-\\><C-w>l", {desc = 'Navigate window Right'})

--###########################################################################  window modification ##########################################################################################


vim.keymap.set("n", "<C-Up>", ":resize -1<CR>", {noremap = true, silent = true , desc = 'resize window Up'})
vim.keymap.set("n", "<C-Down>", ":resize +1<CR>", {noremap = true, silent = true , desc = 'resize window Down'})
vim.keymap.set("n", "<C-Left>", ":vertical resize -1<CR>", {noremap = true, silent = true , desc = 'resize window Left'})
vim.keymap.set("n", "<C-Right>", ":vertical resize +1<CR>", {noremap = true, silent = true , desc = 'resize window Right'})

