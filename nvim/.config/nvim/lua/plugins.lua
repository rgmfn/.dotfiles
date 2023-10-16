vim.cmd [[packadd packer.nvim]]

return require('packer').startup(
    function(use)
        use 'neovim/nvim-lspconfig'
        use {'neoclide/coc.nvim', branch = 'release'}
        use 'mbbill/undotree'
        use 'tpope/vim-commentary'
        use 'vim-scripts/Rainbow-Parenthesis'
        use 'tpope/vim-surround'
        use 'junegunn/goyo.vim'
        use 'pangloss/vim-javascript'
        use 'sharkdp/fd'
        use 'nvim-lua/plenary.nvim'
        use 'nvim-telescope/telescope.nvim'
        use 'nvim-telescope/telescope-fzy-native.nvim'
        use 'nvim-treesitter/nvim-treesitter'
        use 'nvim-treesitter/nvim-treesitter-context'
        use 'BurntSushi/ripgrep'
        use 'mattn/emmet-vim'
        use {'rrethy/vim-hexokinase', update = 'cd /Users/rgmfn/.local/share/nvim/site/pack/packer/start/vim-hexokinase && make hexokinase'}
        use 'christoomey/vim-tmux-navigator'

        use 'joshdick/onedark.vim'
        use {'dracula/vim', as = 'dracula'}
        use 'romgrk/doom-one.vim'
        use 'altercation/vim-colors-solarized'
        use 'overcache/NeoSolarized'
        use 'morhetz/gruvbox'
        use 'hachy/eva01.vim'

		use 'wbthomason/packer.nvim'
    end
)
