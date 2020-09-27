"set background=dark

"highlight clear

"if exists("syntax_on")
"  syntax reset
"endif

let g:colors_name = "mine_colors"

" ==== START HIGHLIGHT GROUPS ====

"PREVIOUS GUIBG=#fef9ec(coquilleOeuf) (gedit blanc f2f1f0) (courant fefcf5 )
highlight Normal guifg=#000000 ctermfg=253 guibg=#fefcf5 gui=NONE cterm=NONE
"e4e0d4(darker)  ; normal default pour moi guibg=#fef9ec

" GUI OPTIONS
" gui=reverse,bold  

" Misc {{{1



highlight Number guifg=#556b2f ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight String guifg=#8a2be2 ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

" OK
highlight Directory guifg=#2e8b57 ctermfg=216 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight EndOfBuffer guifg=#2e8b57 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight MatchParen guifg=#e50000 ctermfg=161 guibg=NONE ctermbg=NONE gui=bold cterm=bold
highlight Title guifg=#dfdfaf ctermfg=187 guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
highlight WildMenu ctermfg=NONE guibg=#303030 ctermbg=236 gui=bold cterm=bold guifg=#ffff5f
highlight NonText guifg=#ff00ff ctermfg=199 guibg=NONE ctermbg=NONE gui=bold cterm=bold
highlight VertSplit guifg=#f1f1f1 ctermfg=237 guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE

" FOREGROUND NORMAL TEXTE
highlight SpecialKey guifg=#3a3a3a ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE


" Cursor lines {{{1 OK

highlight CursorColumn ctermfg=NONE guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
highlight CursorLine ctermfg=NONE guibg=#303030 ctermbg=236 gui=NONE cterm=NONE guifg=#ffff5f

" Tabline {{{1  OK

highlight TabLine guifg=#808080 ctermfg=244 guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
highlight TabLineFill guifg=#dfdfaf ctermfg=187 guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
highlight TabLineSel guifg=#e9e9e9 ctermfg=254 guibg=#303030 ctermbg=236 gui=bold cterm=bold

" Statusline {{{1   OK

highlight StatusLine guifg=#e9e9e9 ctermfg=254 guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE
highlight StatusLineNC guifg=#808080 ctermfg=244 guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE

" Number column {{{1   OK
"highlight CursorLineNr guifg=#878787 ctermfg=102 guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE
"highlight LineNr guifg=#878787 ctermfg=102 guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE
highlight LineNr term=bold cterm=NONE ctermfg=249 ctermbg=NONE gui=NONE guifg=249 guibg=NONE
highlight CursorLineNr term=bold cterm=NONE ctermfg=249 ctermbg=NONE gui=NONE guifg=249 guibg=NONE

" Color column {{{1  OK
highlight ColorColumn ctermfg=NONE guibg=lightgrey ctermbg=237 gui=NONE cterm=NONE

" Diff & Signs {{{1   OK

highlight SignColumn ctermfg=NONE guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE

highlight DiffAdd guifg=#7fbf7f ctermfg=119 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight DiffDelete guifg=#df5f5f ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight DiffChange guifg=#005fdf ctermfg=227 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight DiffText guifg=#ff5f5f ctermfg=203 guibg=#5f0000 ctermbg=52 gui=bold cterm=bold

" Folds {{{1   OK

hi FoldColumn ctermfg=NONE guibg=lightgrey ctermbg=237 gui=NONE cterm=NONE guifg=#000000
hi Folded ctermfg=NONE guibg=lightgrey ctermbg=237 gui=NONE cterm=NONE guifg=#000000
"highlight FoldColumn ctermfg=102 ctermbg=237 cterm=NONE guifg=#dfdfaf guibg=#3a3a3a gui=NONE
"highlight Folded ctermfg=102 ctermbg=237 cterm=NONE guifg=#dfdfaf guibg=#3a3a3a gui=NONE

" Search {{{1    OK

highlight IncSearch guifg=#D73104 ctermfg=7 guibg=#FFFF87 ctermbg=27 gui=reverse cterm=NONE
highlight Search guifg=#EC3E06 ctermfg=7 guibg=#FFFF87 ctermbg=161 gui=NONE cterm=NONE

" Messages {{{1   OK
"(atténué df0000 ;      e5000 (milieu) ;    ff0000 (clair fort pique les yeux ply)
" terminal rouge 160= #df0000 et rouge base 9=#ff0000
highlight Error guifg=#eeeeee ctermfg=255 guibg=#e50000 ctermbg=160 gui=NONE cterm=NONE term=reverse
highlight ErrorMsg guifg=#eeeeee ctermfg=255 guibg=#e50000 ctermbg=160 gui=NONE cterm=NONE
highlight ModeMsg ctermfg=156 guibg=NONE ctermbg=NONE gui=bold cterm=bold
highlight MoreMsg ctermfg=7 guibg=NONE ctermbg=26 gui=NONE cterm=NONE
highlight WarningMsg guifg=#ec1305 ctermfg=7 guibg=#d0d0d0 ctermbg=26 gui=NONE cterm=NONE

" Visual {{{1    OK

hi Visual ctermbg=177 ctermfg=254 guibg=#d787ff guifg=#f9f9f9
"highlight Visual guifg=#c0c0c0 ctermfg=7 guibg=#005f87 ctermbg=24 gui=NONE cterm=NONE
highlight VisualNOS guifg=#f9f9f9 ctermfg=7 guibg=#9932cc ctermbg=60 gui=NONE cterm=NONE

" Pmenu {{{1   OK

"highlight Pmenu guifg=#f1f1f1 ctermfg=254 guibg=#262626 ctermbg=235 gui=NONE cterm=NONE
"highlight PmenuSbar ctermfg=NONE guibg=#444444 ctermbg=238 gui=NONE cterm=NONE
"highlight PmenuSel guifg=#df5f5f ctermfg=167 guibg=#444444 ctermbg=238 gui=bold cterm=bold
"highlight PmenuThumb ctermfg=NONE guibg=#df5f5f ctermbg=167 gui=NONE cterm=NONE
hi Pmenu gui=NONE cterm=NONE guibg=#d0d0d0


" Spell {{{1   OK
highlight SpellBad guifg=#ec1305 ctermfg=7 guibg=#d0d0d0 ctermbg=26 gui=NONE cterm=NONE
highlight SpellCap guifg=#ec1305 ctermfg=7 guibg=#d0d0d0 ctermbg=26 gui=NONE cterm=NONE
highlight SpellLocal guifg=#ec1305 ctermfg=7 guibg=#d0d0d0 ctermbg=26 gui=NONE cterm=NONE
highlight SpellRare guifg=#ec1305 ctermfg=7 guibg=#d0d0d0 ctermbg=26 gui=NONE cterm=NONE

" Neovim {{{1

"highlight TermCursor ctermfg=NONE guibg=#ff00af ctermbg=199 gui=NONE cterm=NONE

" HTML {{{1

"highlight link htmlTagN htmlTagName

" COLOR INFO
" blanc 254=#e4e4e4 f9f9f9(plus dur)            (bleu) 33=#0087ff   #3498db       177=#d787ff         
" vert fort pique les yeux #00d787               bleu pale commentaire #80a0ff
" rose (profond) #ff5454   #ff6d6d   #ff8787  #ffa0a0 (léger pale)
" Orange Back White.. enumeration 
" vert (clair > sombre )00D787 00c179    00c179(function)               0080ff(bleu)

" ==== PREVIOUS ====
" Override avec ma config vimrc
hi Comment	term=bold cterm=NONE ctermfg=250 ctermbg=NONE gui=NONE guifg=#a7a7a7 guibg=NONE
hi Constant	term=underline cterm=NONE ctermfg=Magenta ctermbg=NONE gui=NONE guifg=#ff5454 guibg=NONE
hi Special	term=bold cterm=NONE ctermfg=LightRed ctermbg=NONE gui=NONE guifg=#cc6c00 guibg=NONE
hi PreProc	term=underline cterm=NONE ctermfg=LightBlue ctermbg=NONE gui=NONE guifg=#ff80ff guibg=NONE
hi Underlined	term=underline cterm=underline ctermfg=LightBlue gui=underline guifg=#1a8dff
""hi Ignore	term=NONE cterm=NONE ctermfg=black ctermbg=NONE gui=NONE guifg=bg guibg=NONE
hi Ignore	term=NONE cterm=NONE ctermfg=black ctermbg=NONE gui=NONE guifg=#8c8a8b guibg=NONE

hi Statement	term=bold cterm=NONE,bold ctermfg=42 ctermbg=NONE gui=NONE guifg=#8b4726 guibg=NONE
hi Type		term=underline cterm=NONE,bold ctermfg=33 ctermbg=NONE gui=NONE guifg=#da9203 guibg=NONE
hi Identifier	term=underline cterm=bold ctermfg=Cyan ctermbg=NONE gui=NONE guifg=#ea4335 guibg=NONE
hi Function gui=NONE guifg=#4285f4
hi Keyword guifg=#34a853  

" #da9203 orange
" #4285f4 bleu
" #ea4335 rouge
" #34a853 vert
" 
" #8b4726 marron
"
" orange special ff8700(trop clair)
" bleu function guifg=#0073e5
" gris keyword guifg=#383838              
" vert identifier guifg=#00c179   00ad6c(darker) jolie vert 009a60
" bleu statement guifg=#0080ff
" bleu type guifg=#0080ff    0073e5(darker)    0066cc(even darker shade)    #0059b2(even darkerer)

"hi Operator guifg=#00ff00
hi Todo		term=standout cterm=NONE ctermfg=Black ctermbg=Yellow gui=NONE guifg=Blue guibg=Yellow

