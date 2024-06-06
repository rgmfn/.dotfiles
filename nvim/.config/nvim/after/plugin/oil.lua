require("oil").setup({
    view_options = {
        show_hidden = true,
        is_hidden_file = function (name, bufnr)
            return vim.startswith(name, ".")
        end,
    }
})

vim.cmd[[command! -nargs=* -complete=command Ex lua vim.cmd('Oil <args>')]]
