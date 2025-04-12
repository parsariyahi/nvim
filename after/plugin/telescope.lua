local builtin = require('telescope.builtin')

require('telescope').setup({
  defaults = {
    mappings = {
      n = {
        ["<C-u>"] = require('telescope.actions').preview_scrolling_up,
        ["<C-d>"] = require('telescope.actions').preview_scrolling_down,
      },
      i = {
        ["<C-u>"] = require('telescope.actions').preview_scrolling_up,
        ["<C-d>"] = require('telescope.actions').preview_scrolling_down,
      },
    },
  },
})

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
