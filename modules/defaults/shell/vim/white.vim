hi clear
if exists('syntax_on')
    syntax reset
endif

let g:colors_name = 'white'
set background=light

" Base
hi Normal       ctermfg=16   ctermbg=255   cterm=NONE
hi Comment      ctermfg=245  ctermbg=NONE  cterm=italic
hi Constant     ctermfg=235  ctermbg=NONE  cterm=NONE
hi String       ctermfg=240  ctermbg=NONE  cterm=NONE
hi Number       ctermfg=16   ctermbg=NONE  cterm=bold
hi Identifier   ctermfg=16   ctermbg=NONE  cterm=NONE
hi Function     ctermfg=0    ctermbg=NONE  cterm=bold
hi Statement    ctermfg=0    ctermbg=NONE  cterm=bold
hi Keyword      ctermfg=0    ctermbg=NONE  cterm=bold
hi Type         ctermfg=235  ctermbg=NONE  cterm=italic
hi PreProc      ctermfg=240  ctermbg=NONE  cterm=NONE
hi Special      ctermfg=235  ctermbg=NONE  cterm=NONE
hi Operator     ctermfg=245  ctermbg=NONE  cterm=NONE
hi Delimiter    ctermfg=245  ctermbg=NONE  cterm=NONE

" UI
hi LineNr       ctermfg=250  ctermbg=255   cterm=NONE
hi CursorLineNr ctermfg=240  ctermbg=255   cterm=bold
hi CursorLine   ctermfg=NONE ctermbg=NONE  cterm=NONE 
hi Visual       ctermfg=255  ctermbg=240   cterm=NONE
hi Search       ctermfg=255  ctermbg=16    cterm=bold
hi IncSearch    ctermfg=255  ctermbg=0     cterm=bold
hi StatusLine   ctermfg=0    ctermbg=254   cterm=bold
hi StatusLineNC ctermfg=250  ctermbg=254   cterm=NONE
hi VertSplit    ctermfg=250  ctermbg=NONE  cterm=NONE
hi Pmenu        ctermfg=240  ctermbg=254   cterm=NONE
hi PmenuSel     ctermfg=255  ctermbg=240   cterm=NONE
hi MatchParen   ctermfg=255  ctermbg=0     cterm=bold
hi Error        ctermfg=0    ctermbg=255   cterm=bold,underline
hi Todo         ctermfg=255  ctermbg=240   cterm=bold
hi SignColumn   ctermfg=245  ctermbg=255   cterm=NONE
hi FoldColumn   ctermfg=250  ctermbg=255   cterm=NONE
hi Folded       ctermfg=250  ctermbg=255   cterm=NONE
hi NonText      ctermfg=254  ctermbg=NONE  cterm=NONE
hi SpecialKey   ctermfg=254  ctermbg=NONE  cterm=NONE
