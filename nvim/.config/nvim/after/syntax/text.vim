syntax match foldMarker /\v(\{\{\{\d?|\}\}\}\d?)/
hi link foldMarker LineNr

syntax match hiMagenta /\v\[\[.+\]\]/
hi link hiMagenta CocListFgMagenta

syntax match hiGreen /\v\(\(.+\)\)/
hi link hiGreen CocListFgGreen
