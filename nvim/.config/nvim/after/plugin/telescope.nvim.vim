lua << EOF
require('telescope').setup {
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        color_devicons = true,
        layout_config = {
            preview_cutoff = 20,
            width = 0.95,
        },
    }
}
EOF
