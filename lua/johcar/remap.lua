vim.g.mapleader = " "

-- netrw
vim.keymap.set("n", "<leader>pe", vim.cmd.Ex)

-- move highlighted blocks 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- move line to this line without moving cursor(which is default)
vim.keymap.set("n", "J", "mzJ`z")