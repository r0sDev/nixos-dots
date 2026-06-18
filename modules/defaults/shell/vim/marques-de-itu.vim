hi clear
if exists('syntax_on')
    syntax reset
endif

let g:colors_name = 'marques-de-itu'
set background=dark

" Base
hi Normal       ctermfg=253  ctermbg=16    cterm=NONE
hi Comment      ctermfg=240  ctermbg=NONE  cterm=italic
hi Constant     ctermfg=250  ctermbg=NONE  cterm=NONE
hi String       ctermfg=245  ctermbg=NONE  cterm=NONE
hi Number       ctermfg=253  ctermbg=NONE  cterm=bold
hi Identifier   ctermfg=253  ctermbg=NONE  cterm=NONE
hi Function     ctermfg=255  ctermbg=NONE  cterm=bold
hi Statement    ctermfg=255  ctermbg=NONE  cterm=bold
hi Keyword      ctermfg=255  ctermbg=NONE  cterm=bold
hi Type         ctermfg=250  ctermbg=NONE  cterm=italic
hi PreProc      ctermfg=245  ctermbg=NONE  cterm=NONE
hi Special      ctermfg=250  ctermbg=NONE  cterm=NONE
hi Operator     ctermfg=240  ctermbg=NONE  cterm=NONE
hi Delimiter    ctermfg=240  ctermbg=NONE  cterm=NONE

" UI
hi LineNr       ctermfg=236  ctermbg=16    cterm=NONE
hi CursorLineNr ctermfg=245  ctermbg=16    cterm=bold
hi CursorLine   ctermfg=NONE ctermbg=233   cterm=NONE
hi Visual       ctermfg=16   ctermbg=245   cterm=NONE
hi Search       ctermfg=16   ctermbg=253   cterm=bold
hi IncSearch    ctermfg=16   ctermbg=255   cterm=bold
hi StatusLine   ctermfg=255  ctermbg=233   cterm=bold
hi StatusLineNC ctermfg=236  ctermbg=233   cterm=NONE
hi VertSplit    ctermfg=236  ctermbg=NONE  cterm=NONE
hi Pmenu        ctermfg=245  ctermbg=233   cterm=NONE
hi PmenuSel     ctermfg=16   ctermbg=245   cterm=NONE
hi MatchParen   ctermfg=16   ctermbg=255   cterm=bold
hi Error        ctermfg=255  ctermbg=16    cterm=bold,underline
hi Todo         ctermfg=16   ctermbg=245   cterm=bold
hi SignColumn   ctermfg=240  ctermbg=16    cterm=NONE
hi FoldColumn   ctermfg=236  ctermbg=16    cterm=NONE
hi Folded       ctermfg=236  ctermbg=16    cterm=NONE
hi NonText      ctermfg=233  ctermbg=NONE  cterm=NONE
hi SpecialKey   ctermfg=233  ctermbg=NONE  cterm=NONE
