" lua require 'init'

" BASIC SETS {{{
set number
set relativenumber
set expandtab
set softtabstop=4 tabstop=4 shiftwidth=4
set smartindent
set nowrap " no word wrap, text will just go off screen
set ignorecase
set smartcase   " searching will be case sensitive when capitals are included
set noswapfile " not create swap file
set undodir=~/.vim/undodir
set undofile
set nohlsearch " doesn't highlight all instances of search
set incsearch " while you search you get results
set scrolloff=8 " makes it so scrolling with cursor won't make cursor at edge of screen
set guicursor=i-n-v-c:block " mostly here because of nvim, sets cursor to always be block
set clipboard=unnamedplus
set encoding=utf-8
set foldmethod=marker
set nocompatible " polyglot told me to
set t_Co=256 " uses 256 color (helps with a tmux issue)
match ColorColumn "\%80v." " highlight only happens when line go past 80 characters
" }}}

" LINE NUMBER MAGIC {{{
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
" }}}

" PLUGINS {{{
call plug#begin()

" Plug 'neovim/nvim-lspconfig'
" lsp

if has('nvim')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  source ~/.config/nvim/plug-config/coc.vim
endif
"auto completion

" Plug 'ycm-core/YouCompleteMe'
"auto completion

Plug 'lyuts/vim-rtags'
"idk

Plug 'mbbill/undotree'
"better undo tree

Plug 'tpope/vim-commentary'
"easy commenting things in and out

" Plug 'jiangmiao/auto-pairs'
"auto pair completion for brackets

" Plug 'dominikduda/vim_current_word'
"highlights word under cursor and all occurences of it

Plug 'vim-scripts/Rainbow-Parenthesis'
"rainbow parentheses

" Plug 'ryanoasis/vim-devicons'
"add icons to stuff like nerdtree

Plug 'pangloss/vim-javascript'
" provides syntax highlighting and improved indentation

Plug 'tpope/vim-surround'
" change/add/remove surrounding quotes/parentheses/brackets

Plug 'junegunn/goyo.vim'
" prvides distraction-free writing in vim

" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Lean & mean status/tabline for vim that's light as air.

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
" fuzzy finder

Plug 'nvim-treesitter/nvim-treesitter'
" better syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter-context'
" sticky header of current indentations

Plug 'BurntSushi/ripgrep'
" ripgrep

Plug 'sharkdp/fd'
" needed by telescope

Plug 'sheerun/vim-polyglot'
" collection of language packs

Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
" highlight colors with their color

" Plug 'Yggdroot/indentLine'
" This plugin is used for displaying thin vertical lines at each indentation level for code indented with spaces

Plug 'mattn/emmet-vim'
" good for creating html tags

" Plug 'lervag/vimtex'
" latex filetype and syntax plugin

" Plug 'aclements/latexrun'
" needed by vimtex

Plug 'christoomey/vim-tmux-navigator'
" better navigation integration with tmux, works like same application

Plug 'jreybert/vimagit'
" magit for vim

" COLORSCHEME PLUGINS {{{2
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'romgrk/doom-one.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'overcache/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'hachy/eva01.vim'
" Plug 'shaunsingh/nord.nvim'
Plug 'arcticicestudio/nord-vim'

call plug#end()
" }}}2
" }}}

" COLORSCHEME CONFIG {{{
" colorscheme onedark
" colorscheme dracula
" colorscheme gruvbox
" colorscheme NeoSolarized
" colorscheme doom-one
" colorscheme niji2
" colorscheme eva01-LCL
" colorscheme eva01
colorscheme nord
let g:doom_one_terminal_colors = v:true

filetype on
filetype plugin indent on
syntax on
" set background=dark

if &term =~# '^screen'
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

if (has("termguicolors"))
  set termguicolors "Enables 24-bit RGB color in the TUI.  Uses gui attributes instead of cterm attributes.
endif
" }}}

" HEXOKINASE CONFIG {{{
let g:Hexokinase_highlighters = ['backgroundfull']
" }}}

" EMMET-VIM CONFIG {{{
" let g:user_emmet_mode='n'        "only enable normal mode functions
" let g:user_emmet_leader_key=','
" }}}

" REMAPS {{{
let mapleader = " " "sets leader key to space

imap jk <Esc>

nnoremap <A-k> gk
nnoremap <A-j> gj

" helix-like document movement
nnoremap gk gg
nnoremap gj G
nnoremap gl $
nnoremap gh 0
nnoremap gs ^
vnoremap gk gg
vnoremap gj G
vnoremap gl $
vnoremap gh 0
vnoremap gs ^

"move between window splits
" nnoremap <leader>h :wincmd h<CR>
" nnoremap <leader>l :wincmd l<CR>
" nnoremap <leader>j :wincmd j<CR>
" nnoremap <leader>k :wincmd k<CR>

"resizing window splits
" nnoremap <leader>+ :10 wincmd +<CR>
" nnoremap <leader>- :10 wincmd -<CR>
" nnoremap <leader>> :10 wincmd ><CR>
" nnoremap <leader>< :10 wincmd <<CR>

"moving window splits
" nmap <leader>ml :wincmd L <CR>
" nmap <leader>mk :wincmd K <CR>
" nmap <leader>mj :wincmd J <CR>
" nmap <leader>mh :wincmd H <CR>

"opens files on the side
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 20<CR>

"create blank line, stay in normal mode
nmap <leader>o o<Esc>
nmap <leader>O O<Esc>

"turn off highlights until next search
nmap <leader>nh :noh<CR>

nmap <leader>vs :vsplit 
nmap <leader>ns :split 

nmap <leader>cl 0D

nnoremap <leader>u :UndotreeShow<CR>

" interfered with c-s freeze in tmux
" nmap <c-s> :w<CR>
" imap <c-s> jk :w<CR>i

nmap <leader>te :tabedit 
nmap <leader>ms :mksession

"because I accidentally type :W instead of :w a lot and :W isn't mapped
command W w

command Q qa

nmap <leader>mv :mkview
nmap <leader>lv :loadview

nmap <leader>w :wa<CR>
nmap <leader>x :xa<CR>

nmap sc :set guicursor=a:block<CR>

nnoremap <leader>g :Goyo<CR>

" add all misspelled words to the local words list
nmap <leader>cs :%norm ]szG<CR>

" run macro on selection
vnoremap n :norm @

" moving text around
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" Git

nnoremap <leader>gp :!git push<cr>

" replace selection while keeping pasted thing in register
xnoremap <leader>p "_dP

" TELESCOPE REMAPS {{{2
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fd <cmd>Telescope diagnostics<cr>
" }}}2

" COC REMAPS {{{2
nnoremap <leader>cd <cmd>CocList diagnostics<cr>
" }}}2
" }}}
