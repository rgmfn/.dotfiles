local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fc', builtin.colorscheme, {})

local telescope = require('telescope')

telescope.setup({
    pickers = {
        colorscheme = {
            enable_preview = true
        }
    }
})
