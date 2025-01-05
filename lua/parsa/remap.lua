vim.g.mapleader = " "
vim.g.netrw_winsize=30

vim.keymap.set("n", "<leader>w", ":w!<CR>")
vim.keymap.set("n", "<leader>q", ":q!<CR>")

-- Just use Lexplore.
-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", vim.cmd.Lex)

-- Moving selected text in virtual mode.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Jumping between splitied pages.
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

-- Moving between splitied pages.
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

-- Keep the cursor when using "J".
vim.keymap.set("n", "J", "mzJ`z") 

-- Keep the cursor when doing "ctrl+u AND ctrl+d".
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Next and Prev with "n", "N".
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- if you use <leader>p instead of p it will remember the pasted text not the selected.
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Next greatest remap ever : asbjornHaland
-- Keymap for using the same clipboard as system clipboard,
-- But the problem is we don't have any clipboard provider for linux for now,
-- so i comment these for now.
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete without saving the text in buffer.
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- This will rename the selected word in hole file.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- This will change the work dir into current work dir.
vim.keymap.set("n", "<leader>chc", ":cd <CR>:cd -<CR>")
