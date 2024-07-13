local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fc', builtin.colorscheme, {})
vim.keymap.set('n', '<leader>mp', builtin.man_pages, {})
vim.keymap.set('n', '<leader>ht', builtin.help_tags, {})

local telescope = require('telescope')

telescope.setup({
    pickers = {
        colorscheme = {
            enable_preview = true
        },
        find_files = {
            hidden = true
        }
    }
})
