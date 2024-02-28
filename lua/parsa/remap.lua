vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", ":w!<CR>")
vim.keymap.set("n", "<leader>q", ":q!<CR>")

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>le", vim.cmd.Lex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.keymap.set("n", "<A-h>", function ()
    vim.cmd(":wincmd h")
end)

vim.keymap.set("n", "<A-j>", function ()
    vim.cmd(":wincmd j")
end)

vim.keymap.set("n", "<A-k>", function ()
    vim.cmd(":wincmd k")
end)

vim.keymap.set("n", "<A-l>", function ()
    vim.cmd(":wincmd l")
end)


vim.keymap.set("n", "<C-A-h>", function ()
    vim.cmd("wincmd H")
end)

vim.keymap.set("n", "<C-A-j>", function ()
    vim.cmd("wincmd J")
end)

vim.keymap.set("n", "<C-A-k>", function ()
    vim.cmd("wincmd K")
end)

vim.keymap.set("n", "<C-A-l>", function ()
    vim.cmd("wincmd L")
end)


vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>chc", ":cd <CR>:cd -<CR>")
