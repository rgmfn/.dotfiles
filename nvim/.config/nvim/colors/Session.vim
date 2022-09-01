let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.config/nvim/colors
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 holosanji.vim
badd +16 /mnt/c/Users/Ryan/Documents/Programming/GitHubRepos/ion/ion.cpp
argglobal
%argdel
$argadd holosanji.vim
edit holosanji.vim
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 20 + 22) / 44)
exe 'vert 1resize ' . ((&columns * 73 + 73) / 147)
exe '2resize ' . ((&lines * 20 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 73 + 73) / 147)
exe 'vert 3resize ' . ((&columns * 73 + 73) / 147)
argglobal
balt /mnt/c/Users/Ryan/Documents/Programming/GitHubRepos/ion/ion.cpp
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 100 - ((9 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 100
normal! 0
wincmd w
argglobal
if bufexists("holosanji.vim") | buffer holosanji.vim | else | edit holosanji.vim | endif
if &buftype ==# 'terminal'
  silent file holosanji.vim
endif
balt /mnt/c/Users/Ryan/Documents/Programming/GitHubRepos/ion/ion.cpp
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 388 - ((10 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 388
normal! 032|
wincmd w
argglobal
if bufexists("/mnt/c/Users/Ryan/Documents/Programming/GitHubRepos/ion/ion.cpp") | buffer /mnt/c/Users/Ryan/Documents/Programming/GitHubRepos/ion/ion.cpp | else | edit /mnt/c/Users/Ryan/Documents/Programming/GitHubRepos/ion/ion.cpp | endif
if &buftype ==# 'terminal'
  silent file /mnt/c/Users/Ryan/Documents/Programming/GitHubRepos/ion/ion.cpp
endif
balt holosanji.vim
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 15 - ((14 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 15
normal! 0
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 20 + 22) / 44)
exe 'vert 1resize ' . ((&columns * 73 + 73) / 147)
exe '2resize ' . ((&lines * 20 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 73 + 73) / 147)
exe 'vert 3resize ' . ((&columns * 73 + 73) / 147)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0&& getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOFAc
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
