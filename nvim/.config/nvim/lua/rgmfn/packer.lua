-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine'
    })
    use({
        'nordtheme/vim',
        as = 'nord'
    })
    use({
        'sainnhe/everforest',
        as = 'everforest'
    })
    use({
        'folke/tokyonight.nvim',
        as = 'tokyonight'
    })
    use({
        'navarasu/onedark.nvim',
        as = 'onedark'
    })

    -- use('rrethy/vim-hexokinase', {run = 'make hexokinase'})
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/nvim-treesitter-context')
    use('nvim-treesitter/playground')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('tpope/vim-commentary')
    use('tpope/vim-surround')
    use('junegunn/goyo.vim')
    use('mattn/emmet-vim')
    use('christoomey/vim-tmux-navigator')
    use('rrethy/vim-hexokinase', { config = 'make hexokinase' })
    use('lewis6991/gitsigns.nvim')
    use('stevearc/oil.nvim')
    use('petertriho/nvim-scrollbar')
    use('sontungexpt/url-open')

    use {
        'folke/todo-comments.nvim',
        -- or
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }
end)
