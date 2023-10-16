lua << EOF
require('telescope').setup {
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = ' >',
        color_devicons = true,
        layout_config = {
            preview_cutoff = 40,
        },
    }
}
EOF
