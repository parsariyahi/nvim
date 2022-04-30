local trouble_status, trouble = pcall(require, "trouble")
if not trouble_status then
  return
end

local keymap = vim.api.nvim_set_keymap

local opts = {silent = true, noremap = true}

trouble.setup{
    icons=false,
}

keymap("n", "<leader>xx", ":Trouble<cr>", opts)
keymap("n", "<leader>xw", ":Trouble workspace_diagnostics<cr>", opts)
keymap("n", "<leader>xd", ":Trouble document_diagnostics<cr>", opts)
keymap("n", "<leader>xl", ":Trouble loclist<cr>", opts)
keymap("n", "<leader>xq", ":Trouble quickfix<cr>", opts)
keymap("n", "<leader>xq", ":Trouble quickfix<cr>", opts)
keymap("n", "<leader>xr", ":Trouble lsp_references<cr>", opts)
