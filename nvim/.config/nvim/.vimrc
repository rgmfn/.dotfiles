" SETS UNIQUE TO SERVER {{{
set wildmenu
" }}}

" BASIC SETS {{{
set number
set relativenumber
set expandtab
" set softtabstop=4 tabstop=4 shiftwidth=4
set softtabstop=2 tabstop=2 shiftwidth=2 " pintos has 2 space indentation
set smartindent
set nowrap " no word wrap, text will just go off screen
set ignorecase
set smartcase " searching will be case sensitive when capitals are included
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

" SETS I DON'T USE RIGHT NOW {{{
" set noerrorbells
" set novisualbell
" set formatoptions-=cro "won't make a new line below a comment also a comment (but it doesn't work)
" set listchars=tab:>~,nbsp:_,trail:. " changes what different white space shows up as
" set list " puts the whitespace changes into effect
" set colorcolumn=80
" set exrc " if the folder opened (vim .) has a vimrc, will source that local vimrc
" au BufEnter * set fo-=r fo-=o " won't make a new line below a comment also a comment (but it works)
" }}}

" COLORSCHEME CONFIG {{{
" colorscheme onedark
" colorscheme dracula
" colorscheme gruvbox
" colorscheme NeoSolarized
" colorscheme doom-one
" let g:doom_one_terminal_colors = v:true

" colorscheme darkblue
" colorscheme eva01-LCL
colorscheme nijisanji

if &term =~# '^screen'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

set termguicolors

filetype on
filetype plugin indent on
syntax on
" set background=dark

" if (g:colors_name != 'NeoSolarized')
"     set termguicolors "Enables 24-bit RGB color in the TUI.  Uses gui attributes instead of cterm attributes.
" endif
" }}}

" REMAPS {{{
let mapleader = " " "sets leader key to space

imap jk <Esc>

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

nmap sc :set guicursor=i-n-v-c:block<CR>

" moving text around
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" }}}

" REMAPS UNIQUE TO SERVER {{{
nmap <leader>mx :30 wincmd ><CR>
" }}}
