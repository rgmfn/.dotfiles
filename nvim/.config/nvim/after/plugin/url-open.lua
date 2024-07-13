require('url-open').setup({
    highlight_url = {
        cursor_move = {
            enabled = false,
        }
    }
})

vim.keymap.set("n", "gx", "<esc>:URLOpenUnderCursor<cr>")
