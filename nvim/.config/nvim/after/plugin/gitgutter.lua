vim.keymap.set('n', '<leader>gg', ':GitGutterToggle<CR>')

vim.keymap.set('n', ']h', '<Plug>(GitGutterNextHunk)')
vim.keymap.set('n', '[h', '<Plug>(GitGutterPrevHunk)')

vim.g.gitgutter_enabled = 0
