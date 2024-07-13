require("todo-comments").setup({
    keywords = {
        FIX = { icon = "" },
        TODO = { icon = "" },
        HACK = { icon = "" },
        WARN = { icon = "" },
        PERF = { icon = "" },
        NOTE = { icon = "" },
        TEST = { icon = "" },
    }
})

vim.keymap.set("n", "<leader>tt", ":TodoTelescope<CR>")
