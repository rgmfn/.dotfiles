syntax match foldMarker /\v(\{\{\{\d?|\}\}\}\d?)/
hi link foldMarker LineNr

syntax match hiMagenta /\v\[\[.+\]\]/
hi link hiMagenta CocListFgMagenta

syntax match hiGreen /\v\(\(.+\)\)/
hi link hiGreen CocListFgGreen

syntax match hiBlue /\v\{\{.+\}\}/
hi link hiBlue CocListFgBlue

syntax match hiYellow /\v\<\<.+\>\>/
hi link hiYellow CocListFgYellow

syntax match hiRed /\v\|\|.+\|\|/
hi link hiRed CocListFgRed

syntax match hiCyan /\v\/\/.+\/\//
hi link hiCyan CocListFgCyan

syntax match hiGrey /\v\\\\.+\\\\/
hi link hiGrey CocListFgGrey

syntax match hiItal /\v\*.+\*/
hi link hiItal CocItalic

syntax match hiBold /\v\=.+\=/
hi link hiBold CocBold
