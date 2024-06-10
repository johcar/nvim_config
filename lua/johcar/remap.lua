vim.g.mapleader = " "

-- tree toggle
vim.keymap.set("n", "<leader>pe", ":NvimTreeToggle<CR>")

-- move highlighted blocks 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- jump between splits
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- move line to this line without moving cursor(which is default)
vim.keymap.set("n", "J", "mzJ`z")
