" HoloSanji Theme: {{{
"
" @author rgmfn

" Palette: {{{

" let g:dracula#palette           = {}
" let g:dracula#palette.fg        = ['#F8F8F2', 253]

" let g:dracula#palette.bglighter = ['#424450', 238]
" let g:dracula#palette.bglight   = ['#343746', 237]
" let g:dracula#palette.bg        = ['#282A36', 236]
" let g:dracula#palette.bgdark    = ['#21222C', 235]
" let g:dracula#palette.bgdarker  = ['#191A21', 234]

" let g:dracula#palette.comment   = ['#6272A4',  61]
" let g:dracula#palette.selection = ['#44475A', 239]
" let g:dracula#palette.subtle    = ['#424450', 238]

" let g:dracula#palette.cyan      = ['#8BE9FD', 117]
" let g:dracula#palette.green     = ['#50FA7B',  84]
" let g:dracula#palette.orange    = ['#FFB86C', 215]
" let g:dracula#palette.pink      = ['#FF79C6', 212]
" let g:dracula#palette.purple    = ['#BD93F9', 141]
" let g:dracula#palette.red       = ['#FF5555', 203]
" let g:dracula#palette.yellow    = ['#F1FA8C', 228]

""
"" ANSI
""
"let g:dracula#palette.color_0  = '#21222C'
"let g:dracula#palette.color_1  = '#FF5555'
"let g:dracula#palette.color_2  = '#50FA7B'
"let g:dracula#palette.color_3  = '#F1FA8C'
"let g:dracula#palette.color_4  = '#BD93F9'
"let g:dracula#palette.color_5  = '#FF79C6'
"let g:dracula#palette.color_6  = '#8BE9FD'
"let g:dracula#palette.color_7  = '#F8F8F2'
"let g:dracula#palette.color_8  = '#6272A4'
"let g:dracula#palette.color_9  = '#FF6E6E'
"let g:dracula#palette.color_10 = '#69FF94'
"let g:dracula#palette.color_11 = '#FFFFA5'
"let g:dracula#palette.color_12 = '#D6ACFF'
"let g:dracula#palette.color_13 = '#FF92DF'
"let g:dracula#palette.color_14 = '#A4FFFF'
"let g:dracula#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! dracula#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'dracula'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

scriptencoding utf8

" Configuration: {{{

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'dracula'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: {{{2

" let s:fg        = g:dracula#palette.fg

" let s:bglighter = g:dracula#palette.bglighter
" let s:bglight   = g:dracula#palette.bglight
" let s:bg        = g:dracula#palette.bg
" let s:bgdark    = g:dracula#palette.bgdark
" let s:bgdarker  = g:dracula#palette.bgdarker

" let s:comment   = g:dracula#palette.comment
" let s:selection = g:dracula#palette.selection
" let s:subtle    = g:dracula#palette.subtle

" let s:cyan      = g:dracula#palette.cyan
" let s:green     = g:dracula#palette.green
" let s:orange    = g:dracula#palette.orange
" let s:pink      = g:dracula#palette.pink
" let s:purple    = g:dracula#palette.purple
" let s:red       = g:dracula#palette.red
" let s:yellow    = g:dracula#palette.yellow

let s:calli      = ['#fb8faa', 213]
let s:nina_red   = ['#c80f00', 124]
let s:kiara      = ['#ff7233', 202]
let s:millie     = ['#faa361', 215]
let s:ame        = ['#f4d5a6', 229]
let s:finana     = ['#73d0d3', 37]
let s:pomu       = ['#3eb662', 41]
let s:gura       = ['#528cca', 33]
let s:kronii     = ['#233862', 21]
let s:d_kronii   = ['#0f1a69', 20]
let s:ina        = ['#6e58c3', 62]
let s:mumei      = ['#917c72', 95]
let s:nina_black = ['#020000', 233]
let s:enna       = ['#eacecc', 253]

let s:subtle     = ['#424450', 238]

let s:bg         = ['#303030', 236]
let s:bgdark     = ['#1a1a1a', 234]

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:dracula#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:dracula#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: {{{2

if !exists('g:holosanji_bold')
  let g:holosanji_bold = 1
endif

if !exists('g:holosanji_italic')
  let g:holosanji_italic = 1
endif

if !exists('g:holosanji_underline')
  let g:holosanji_underline = 1
endif

if !exists('g:holosanji_undercurl')
  let g:holosanji_undercurl = g:holosanji_underline
endif

if !exists('g:holosanji_inverse')
  let g:holosanji_inverse = 1
endif

if !exists('g:holosanji_colorterm')
  let g:holosanji_colorterm = 1
endif

"}}}2
" Script Helpers: {{{2

let s:attrs = {
      \ 'bold': g:holosanji_bold == 1 ? 'bold' : 0,
      \ 'italic': g:holosanji_italic == 1 ? 'italic' : 0,
      \ 'underline': g:holosanji_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:holosanji_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:holosanji_inverse == 1 ? 'inverse' : 0,
      \}

function! s:h(scope, fg, ...) " bg, attr_list, special
  let l:fg = copy(a:fg)
  let l:bg = get(a:, 1, ['NONE', 'NONE'])

  let l:attr_list = filter(get(a:, 2, ['NONE']), 'type(v:val) == 1')
  let l:attrs = len(l:attr_list) > 0 ? join(l:attr_list, ',') : 'NONE'

  " Falls back to coloring foreground group on terminals because
  " nearly all do not support undercurl
  let l:special = get(a:, 3, ['NONE', 'NONE'])
  if l:special[0] !=# 'NONE' && l:fg[0] ==# 'NONE' && !has('gui_running')
    let l:fg[0] = l:special[0]
    let l:fg[1] = l:special[1]
  endif

  let l:hl_string = [
        \ 'highlight', a:scope,
        \ 'guifg=' . l:fg[0], 'ctermfg=' . l:fg[1],
        \ 'guibg=' . l:bg[0], 'ctermbg=' . l:bg[1],
        \ 'gui=' . l:attrs, 'cterm=' . l:attrs,
        \ 'guisp=' . l:special[0],
        \]

  execute join(l:hl_string, ' ')
endfunction

"}}}2
" HoloSanji Highlight Groups: {{{2

" call s:h('HoloSanjiBgLight', s:none, s:bglight)
" call s:h('HoloSanjiBgLighter', s:none, s:bglighter)
" call s:h('HoloSanjiBgDark', s:none, s:bgdark)
" call s:h('HoloSanjiBgDarker', s:none, s:bgdarker)

" call s:h('HoloSanjiFg', s:fg)
" call s:h('HoloSanjiFgUnderline', s:fg, s:none, [s:attrs.underline])
" call s:h('HoloSanjiFgBold', s:fg, s:none, [s:attrs.bold])

" call s:h('HoloSanjiComment', s:comment)
" call s:h('HoloSanjiCommentBold', s:comment, s:none, [s:attrs.bold])

" call s:h('HoloSanjiSelection', s:none, s:selection)

" call s:h('HoloSanjiSubtle', s:subtle)

" call s:h('HoloSanjiCyan', s:cyan)
" call s:h('HoloSanjiCyanItalic', s:cyan, s:none, [s:attrs.italic])

" call s:h('HoloSanjiGreen', s:green)
" call s:h('HoloSanjiGreenBold', s:green, s:none, [s:attrs.bold])
" call s:h('HoloSanjiGreenItalic', s:green, s:none, [s:attrs.italic])
" call s:h('HoloSanjiGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

" call s:h('HoloSanjiOrange', s:orange)
" call s:h('HoloSanjiOrangeBold', s:orange, s:none, [s:attrs.bold])
" call s:h('HoloSanjiOrangeItalic', s:orange, s:none, [s:attrs.italic])
" call s:h('HoloSanjiOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
" call s:h('HoloSanjiOrangeInverse', s:bg, s:orange)

" call s:h('HoloSanjiPink', s:pink)
" call s:h('HoloSanjiPinkItalic', s:pink, s:none, [s:attrs.italic])

" call s:h('HoloSanjiPurple', s:purple)
" call s:h('HoloSanjiPurpleBold', s:purple, s:none, [s:attrs.bold])
" call s:h('HoloSanjiPurpleItalic', s:purple, s:none, [s:attrs.italic])

" call s:h('HoloSanjiRed', s:red)
" call s:h('HoloSanjiRedInverse', s:fg, s:red)

" call s:h('HoloSanjiYellow', s:yellow)
" call s:h('HoloSanjiYellowItalic', s:yellow, s:none, [s:attrs.italic])

" call s:h('HoloSanjiError', s:red, s:none, [], s:red)

" call s:h('HoloSanjiErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
" call s:h('HoloSanjiWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
" call s:h('HoloSanjiInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

" call s:h('HoloSanjiTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
" call s:h('HoloSanjiSearch', s:green, s:none, [s:attrs.inverse])
" call s:h('HoloSanjiBoundary', s:comment, s:bgdark)
" call s:h('HoloSanjiLink', s:cyan, s:none, [s:attrs.underline])

" call s:h('HoloSanjiDiffChange', s:orange, s:none)
" call s:h('HoloSanjiDiffText', s:bg, s:orange)
" call s:h('HoloSanjiDiffDelete', s:red, s:bgdark)

call s:h('HoloSanjiCalli',     s:calli, s:none)
call s:h('HoloSanjiNinaRed',   s:nina_red, s:none)
call s:h('HoloSanjiKiara',     s:kiara, s:none)
call s:h('HoloSanjiMillie',    s:millie, s:none)
call s:h('HoloSanjiAme',       s:ame, s:none)
call s:h('HoloSanjiFinana',    s:finana, s:none)
call s:h('HoloSanjiPomu',      s:pomu, s:none)
call s:h('HoloSanjiGura',      s:gura, s:none)
call s:h('HoloSanjiKronii',    s:kronii, s:none)
call s:h('HoloSanjiDKronii',   s:d_kronii, s:none)
call s:h('HoloSanjiIna',       s:ina, s:none)
call s:h('HoloSanjiMumei',     s:mumei, s:none)
call s:h('HoloSanjiNinaBlack', s:nina_black, s:none)
call s:h('HoloSanjiEnna',      s:enna, s:none)

call s:h('HoloSanjiNinaRedUnder',   s:nina_red, s:none, [s:attrs.underline])

call s:h('HoloSanjiNormal',    s:enna, s:bg)

call s:h('HoloSanjiLineNr', s:subtle, s:bg)
call s:h('HoloSanjiCursorLineNr', s:ina, s:bg)

call s:h('HoloSanjiBgDark', s:enna, s:bgdark)
call s:h('HoloSanjiBgSubtle', s:none, s:subtle)

call s:h('HoloSanjiSelection', s:bg, s:gura)
call s:h('HoloSanjiTodo', s:bg, s:nina_red)
call s:h('HoloSanjiFolded', s:mumei, s:bg)
call s:h('HoloSanjiSubtle', s:subtle, s:none)

" }}}2

" }}}
" User Interface: {{{

set background=dark

" Required as some plugins will overwrite
call s:h('Normal', s:enna, g:holosanji_colorterm || has('gui_running') ? s:bg : s:none )
" call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
" call s:h('StatusLineNC', s:none, s:bglight)
" call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
" call s:h('StatusLineTermNC', s:none, s:bglight)
" call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
" call s:h('CursorLine', s:none, s:subtle)

hi! link ColorColumn  HoloSanjiBgSubtle
" hi! link CursorColumn CursorLine
" hi! link DiffAdd      HoloSanjiGreen
" hi! link DiffAdded    DiffAdd
" hi! link DiffChange   HoloSanjiDiffChange
" hi! link DiffDelete   HoloSanjiDiffDelete
" hi! link DiffRemoved  DiffDelete
" hi! link DiffText     HoloSanjiDiffText
hi! link Directory    HoloSanjiGura
" hi! link ErrorMsg     HoloSanjiRedInverse
" hi! link FoldColumn   HoloSanjiSubtle
hi! link Folded       HoloSanjiFolded
" hi! link IncSearch    HoloSanjiOrangeInverse
" call s:h('LineNr', s:comment)
hi! link LineNr       HoloSanjiLineNr
hi! link CursorLineNr HoloSanjiCursorLineNr
" hi! link MoreMsg      HoloSanjiFgBold
hi! link NonText      HoloSanjiSubtle
hi! link Pmenu        HoloSanjiBgDark
hi! link PmenuSbar    HoloSanjiBgDark
hi! link PmenuSel     HoloSanjiSelection
hi! link PmenuThumb   HoloSanjiMumei
hi! link Question     HoloSanjiCalli
" hi! link Search       HoloSanjiSearch
" call s:h('SignColumn', s:comment)
" hi! link TabLine      HoloSanjiBoundary
" hi! link TabLineFill  HoloSanjiBgDark
" hi! link TabLineSel   Normal
" hi! link TermCursor   HoloSanjiIna
hi! link Title        HoloSanjiIna
hi! link VertSplit    HoloSanjiSubtle
hi! link Visual       HoloSanjiBgSubtle
" hi! link VisualNOS    Visual
" hi! link WarningMsg   HoloSanjiOrangeInverse

" }}}
" Syntax: {{{

"" Required as some plugins will overwrite
call s:h('MatchParen', s:finana, s:none, [s:attrs.underline])
"call s:h('Conceal', s:cyan, s:none)

"" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
" if has('nvim')
"  hi! link SpecialKey DraculaRed
"  hi! link LspReferenceText DraculaSelection
"  hi! link LspReferenceRead DraculaSelection
"  hi! link LspReferenceWrite DraculaSelection
"  hi! link LspDiagnosticsDefaultInformation DraculaCyan
"  hi! link LspDiagnosticsDefaultHint DraculaCyan
"  hi! link LspDiagnosticsDefaultError DraculaError
"  hi! link LspDiagnosticsDefaultWarning DraculaOrange
"  hi! link LspDiagnosticsUnderlineError DraculaErrorLine
"  hi! link LspDiagnosticsUnderlineHint DraculaInfoLine
"  hi! link LspDiagnosticsUnderlineInformation DraculaInfoLine
"  hi! link LspDiagnosticsUnderlineWarning DraculaWarnLine
" else
"  hi! link SpecialKey DraculaPink
" endif

hi! link Comment HoloSanjiMumei
"hi! link Underlined DraculaFgUnderline
hi! link Todo HoloSanjiTodo

hi! link Error HoloSanjiNinaRed
hi! link SpellBad HoloSanjiNinaRedUnderline
"hi! link SpellLocal DraculaWarnLine
"hi! link SpellCap DraculaInfoLine
"hi! link SpellRare DraculaInfoLine

hi! link String    HoloSanjiCalli
hi! link Character String
hi! link Number    HoloSanjiPomu
hi! link Boolean   Number
hi! link Float     Number
hi! link Constant  Number

hi! link Identifier HoloSanjiIna
hi! link Function   HoloSanjiGura

hi! link Statement   HoloSanjiCalli
hi! link Conditional Statement
hi! link Repeat      Conditional
hi! link Label       HoloSanjiNinaRed
hi! link Operator    HoloSanjiAme
hi! link Keyword     HoloSanjiNinaRed
hi! link Exception   HoloSanjiCalli

hi! link PreProc   HoloSanjiMillie
hi! link Include   HoloSanjiMillie
hi! link Define    HoloSanjiMillie
hi! link Macro     HoloSanjiMillie
hi! link PreCondit HoloSanjiGura
"hi! link StorageClass DraculaPink
"hi! link Structure DraculaPink
"hi! link Typedef DraculaPink

hi! link Type HoloSanjiFinana

"hi! link Delimiter DraculaFg

hi! link Special HoloSanjiNinaRed
hi! link SpecialComment Comment
"hi! link Tag DraculaCyan
"hi! link helpHyperTextJump DraculaLink
"hi! link helpCommand DraculaPurple
"hi! link helpExample DraculaGreen
"hi! link helpBacktick Special

"}}}
