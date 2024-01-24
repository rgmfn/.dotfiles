-- https://youtu.be/w7i4amO_zaE?si=QhXUQEN3XomNw9wY

vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>j", ":m .+1<CR>==")
vim.keymap.set("n", "<leader>k", ":m .-2<CR>==")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "gk", "gg")
vim.keymap.set("n", "gj", "G")
vim.keymap.set("n", "gl", "$")
vim.keymap.set("n", "gh", "0")
vim.keymap.set("n", "gs", "^")
vim.keymap.set("v", "gk", "gg")
vim.keymap.set("v", "gj", "G")
vim.keymap.set("v", "gl", "$")
vim.keymap.set("v", "gh", "0")
vim.keymap.set("v", "gs", "^")

vim.keymap.set("n", "<leader>o", "o<Esc>")
vim.keymap.set("n", "<leader>O", "O<Esc>")

vim.keymap.set("n", "<leader>cl", "0D")
vim.keymap.set("n", "<leader>te", ":tabedit ")
vim.keymap.set("n", "<leader>mk", ":mksession")

vim.keymap.set("n", "<leader>u", ":UndotreeShow<CR>")

vim.keymap.set("n", "<leader>u", ":UndotreeShow<CR>")

vim.keymap.set("n", "<leader>g", ":Goyo<CR>")

-- add all misspelled words to the local words list
vim.keymap.set("n", "<leader>cs", ":%norm ]szG<CR>:%norm ]szG<CR>")

-- run macro on selection
vim.keymap.set("v", "n", ":norm @")

vim.keymap.set("n", "<leader>qo", ":copen<CR>")
vim.keymap.set("n", "<leader>l", ":cnext<CR>")
vim.keymap.set("n", "<leader>h", ":cprev<CR>")
