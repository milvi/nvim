"set background=dark

highlight clear
"wtf ? does it do ? syntax reset ;; highlight clear ;;
"voir doc. highlight clear nettoie tout
"syntax reset nettoie tout et charge defaults

"if exists("syntax_on")
"  syntax reset
"endif

let g:colors_name = "mine_simple"

" ==== START HIGHLIGHT GROUPS ====

"PREVIOUS GUIBG=#fef9ec(coquilleOeuf) (gedit blanc f2f1f0) (courant fefcf5 )
highlight Normal guifg=#000000 ctermfg=253 guibg=#fefcf5 gui=NONE cterm=NONE
"e4e0d4(darker)  ; normal default pour moi guibg=#fef9ec

" GUI OPTIONS
" gui=reverse,bold  

" Misc {{{1

hi Comment	gui=NONE guifg=#a7a7a7 guibg=NONE
"hi Constant	gui=NONE guifg=#ff5454 guibg=NONE
"hi Special	gui=NONE guifg=#cc6c00 guibg=NONE
"hi PreProc	gui=NONE guifg=#ff80ff guibg=NONE
"hi Underlined	gui=underline guifg=#1a8dff
"hi Ignore	gui=NONE guifg=#8c8a8b guibg=NONE

"hi Statement	gui=NONE guifg=#8b4726 guibg=NONE
"hi Type		gui=NONE guifg=#da9203 guibg=NONE
"hi Identifier	gui=NONE guifg=#ea4335 guibg=NONE
"hi Function gui=NONE guifg=#4285f4
"hi Keyword guifg=black gui=bold 

" #da9203 orange
" #4285f4 bleu
" #ea4335 rouge
" #34a853 vert
" 
" #8b4726 marron


"hi Operator guifg=#00ff00


