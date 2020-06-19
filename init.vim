set termguicolors

set clipboard+=unnamedplus,unnamed

" === SHOW MATCH PAREN AND SET DELAY
set showmatch
set matchtime=3

"syntax enable
colorscheme mine


" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin()
" Make sure you use single quotes

" === LEAN & MEAN STATUS/TABLINE FOR VIM THAT'S LIGHT AS AIR
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


"VERY FAST MOTION f F t T and s S z !
Plug 'justinmk/vim-sneak'

" === COMPLETION
Plug 'https://github.com/ajh17/VimCompletesMe'

" === FORMATER
Plug 'sbdchd/neoformat'

" === LSP Language Server Protocol support (PARTIE CLIENTE)
" COMPLETION, SYNTAX, ERRORS, ETC..
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" === OCAML     vim-ocaml syntax files for vim/neovim
Plug 'ocaml/vim-ocaml'

" === FSHARP            (dépend binaires ds le PATH)
" ide, incomplet, dépendance à configurer
Plug 'ionide/Ionide-vim', {
      \ 'do':  'make fsautocomplete',
      \}

" === HASKELL           (dépend nombreux binaires ds le PATH)
" indentation , syntax files
Plug 'neovimhaskell/haskell-vim'

" omnifunc car celle de ghcide pété
Plug 'https://github.com/eagletmt/neco-ghc'

" === LISP RAINBOW PARENTHESIS ()()()((((())()(()))))
"Plug 'amdt/vim-niji'
Plug 'kien/rainbow_parentheses.vim'

" === OPTIONAL
" Multi-entry selection UI.
" Plug 'junegunn/fzf'

Plug 'mhinz/vim-grepper'
Plug 'itchyny/vim-qfedit'
Plug 'wincent/ferret'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Initialize plugin system
call plug#end()

"=== END OF PLUGS



let mapleader = ","

" Always draw the signcolumn.
set signcolumn=yes

"from vimcompletesme
set completeopt+=longest








" itchyny/vim-qfedit toggle, defaults to 1
"let g:qfedit_enable	= 0


nnoremap <leader>g :Grepper -tool rg<cr>
nnoremap <leader>G :Grepper -tool rg -buffers<cr>
nnoremap <leader>* :Grepper -tool rg -cword -noprompt<cr>

nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" Optional. The default behaviour should work for most users.
let g:grepper               = {}
let g:grepper.tools         = ['rg']
let g:grepper.simple_prompt = 1
let g:grepper.highlight     = 1


let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
let g:haskell_classic_highlighting = 1
"let g:haskell_indent_disable = 1
"let g:haskell_indent_if = 3
"let g:haskell_indent_let = 4
"let g:haskell_indent_where = 6
"let g:haskell_indent_do = 3
"let g:haskell_indent_in = 1
"let g:haskell_indent_guard = 2



"DEBUGGING VARIABLES, DEBUG MODE FOR NVIM
 " only affects the verbosity of Neoformat
"let g:neoformat_verbose = 1
" also increases verbosity of the editor as a whole
"let &verbose            = 1
" necoghc diagnosis via :necoghcdiag<tab>
"let g:necoghc_debug = 1

" === NEOFORMAT CONFIG
let g:neoformat_ocaml_ocamlformat = {
            \ 'exe': 'ocamlformat',
            \ 'no_append': 1,
            \ 'stdin': 1,
            \ 'args': ['--enable-outside-detected-project', '--name', '"%:p"', '-']
            \ }

" Configuration and activation of ocamlformat+ocp-indet for neoformat
let g:neoformat_enabled_ocaml = ['ocamlformat']
" si non défini, le premier trouvé ou erreur

let g:neoformat_enabled_haskell = ['ormolu']

"let g:ormolu_ghc_opt=["TypeApplications","RankNTypes"]

" Configuration variables for vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
"let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='☇'

let g:airline_theme = 'light'
let g:airline_highlighting_cache = 1
"let g:airline_extensions = [] "select extensions to be loaded

"?let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#format = 2



let g:sneak#label = 1

" === LSP CLIENT CONFIG
let g:LanguageClient_rootMarkers = ['*.cabal', 'stack.yaml', 'package.yaml', 'package.json', '.merlin']

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rls'],
    \ 'haskell': ['ghcide', '--lsp'],
    \ 'ocaml': ['ocamllsp'],
    \ }

" bindings pour LSP client LanguageClient-neovim (in rust, autozimu)
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
"nnoremap <silent> gf :call LanguageClient#textDocument_formatting()<CR>

" ADJUSTMENTS IN NEOVIM
" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

augroup END


" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" Prevent that the langmap option applies to characters that result from a
" mapping.  If unset (default), this may break plugins (but it's backward
" compatible).
if has('langmap') && exists('+langnoremap')
  set langnoremap
endif


" Moving lines up or down 
" In normal mode or in insert mode, press Alt-j to move the current line down, or press Alt-k to move the current line up.
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" set relativenumber
set number


" reindet buffer
map <Leader>i mzgg=G`z

" Switch between Vim window splits easily
" Alt+arrow Navigation
" Alt+leftarrow will go one window left, etc.
" Alt == A-* Shift == S-*
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Maximize current window
" Rq: ^W ie CTRL-W supprime le mot avant le curseur en mode ins
" CTRL-W _	Set current window height to N (default: highest possible)
"map <F5> <C-W>_<C-W><Bar>

"highlight current line
nnoremap <Leader>l :set cursorline!<CR>

" voir hi ColorColumn
set colorcolumn=84

" To clear the last used search pattern:
" :let @/ =""
" qui existe sous la forme d'une commande -> C
 
" To turn off highlighting until the next search:
" :noh
" Or turn off highlighting completely:
" set nohlsearch
" Or, to toggle it:
" set hlsearch!
" nnoremap <F3> :set hlsearch!<CR>
nnoremap <Leader>n :nohlsearch<CR>

" remapped Shift-Tab so I could easily insert real tabs at the beginning of the line
"inoremap <S-Tab> <C-V><Tab>

set tabstop=4
set expandtab
" makes the spaces feel like real tabs
"set softtabstop=4
set shiftwidth=4 

" What would be the chances that your keyboard sends an accented letter instead of a ` followed by a character? – romainl Jan 10 '13 at 10:41
" @romainl. That is exactly what is happening. The keyboard driver is trying to send an accented letter. So it works with `<Space><mark>. Thanks for the help. – Kei Jan 10 '13 at 17:34
" FYI: vim-signature does remap this by default: n `] * :<C-U>call signature#mark#Goto("next","spot","alpha")<CR> – Keith Hughitt 

" PEBKAV (Problem Exists Between Keyboard And Vim)

" marks bug, linux is responsible
" partial workaround
nmap à `a
nmap À `A
" àèëËÊêêêèè`zèè en rappelant celles qui ne renvoient rien  [`r`b] vs clavier [``r``b] 
nmap è `e
nmap È `E
nmap ỳ `y
nmap Ỳ `Y
nmap ù `u
nmap Ù `U
nmap ì `i
nmap Ì `I
nmap ò `o
nmap Ò `O
nmap ẁ `w
nmap Ẁ `W
nmap ù `u
nmap Ù `U
nmap ǹ `n
nmap Ǹ `N
" àèỳùìòẁǜǹ directement, sinon entrer ^<Space> ou taper deux fois ^ pour que vim reçoive un ^


" Override the 'ignorecase' option if the search pattern contains upper case characters.
" Only used when the search pattern is typed and 'ignorecase' option is on.
set ignorecase
set smartcase

" === UNDO FILES ===
" turn undofiles ON
set undofile
set undodir=~/.local/share/nvim/undo//,.

" === SWAP FILES ===
" turn swap files ON
set directory=~/.local/share/nvim/swap//

" === BACKUP SETTINGS ===
" turn backup ON
"set backup
set backupcopy=yes
set writebackup
set backupdir=.,~/.local/share/nvim/backup

"'backup' 'writebackup'	action	
"   off	     off	no backup made
"   off	     on		backup current file, deleted afterwards (default)
"   on	     off	delete old backup, backup current file
"   on	     on		delete old backup, backup current file

"don't give the intro message when starting Vim |:intro|
set shortmess+=I

"If you need to define a block in visual block mode with bounds outside the actual text (that is, past the end of lines)
"The 'virtualedit' option can be used to allow positioning the cursor to positions where there is no actual character.
"block	Allow virtual editing in Visual block mode.
set virtualedit=block

"consistency with D, C
nnoremap Y y$

"cmd,filename completion like in shell
"'wildchar' option: A match is done on the pattern in front of the cursor.
set wildmode=longest,list

"avoid cursor from jumping around while J joining lines
"nnoremap J mzJ`z

" Manpage
" -= removes the value from a string list;
" += appends the value to a string list;
" ^= prepends the value to a string list.

" Vertical right delimiter, voir : hi VertSplit
set fillchars-=vert:\| | set fillchars+=vert:\ 


"automatically pairs string delimiter and position between them
"inoremap " ""<Esc>i


"=== CHAR SWAPPING ===
"To use gc to swap the current character with the next, without changing the cursor position:
nnoremap <silent> gc xph

"To use gw to swap the current word with the next, without changing cursor position
nnoremap <silent> gw "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohlsearch<CR>

"To use gl to swap the current word with the previous, keeping cursor on current word
nnoremap <silent> gl "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohlsearch<CR>

"To use gr to swap the current word with the next, keeping cursor on current word
nnoremap <silent> gr "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o>/\w\+\_W\+<CR><c-l>:nohlsearch<CR>

"To use g{ to swap the current paragraph with the next:
nnoremap g{ {dap}p{
""For ISO/IEC_8859-1 Latin-1 Supplement characters, substitute all \w instances with [0-9A-Za-zÀ-ÖØ-öø-ÿ_] and all  \_W instances with \_[^0-9A-Za-zÀ-ÖØ-öø-ÿ_]


" To use this mapping: first, delete,?yank a piece of texte. Then, use visual
" mode to select some other text piece, and press Ctrl-X. The two pieces of 
" text should then be swapped.
vnoremap <C-X> <Esc>`.``gvP``P


" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" replace currently selected text with default register
" without yanking it
vnoremap <leader>p "_dP
"_ is the "blackhole register", according to :help "_:
" vnoremap j'ai mis xnoremaps d'après la doc
" del,yank,change goes to "" et yank also goes to "0
" "_ is the blackhole register, thus the unnamed register "" is untouched
" 
" yank,..then ..      c  then  <C-R>0 
" yank and change by register |num|


"To display all the lines where the word under the cursor occurs, simply do in Normal mode: [I
" works in visual mode too for the visual highlight :
" Preliminary function helper definition :
function! OSearch(action)
  let c = v:count1
  if a:action[0] == "n"
    let s = "/\\<".expand("<cword>")."\\>/"
  elseif a:action[0] == "v"
    execute "normal! gvy"
    let s = "/\\V".substitute(escape(@@, "/\\"), "\n", "\\\\n", "g")."/"
    let diff = (line2byte("'>") + col("'>")) - (line2byte("'<") + col("'<"))
  endif
  if a:action[1] == "l"
    try
      execute "ilist! ".s
    catch
      if a:action[0] == "v"
        normal! gv
      endif
      return ""
    endtry
    let c = input("Go to: ")
    if c !~ "^[1-9]\\d*$"
      if a:action[0] == "v"
        normal! gv
      endif
      return ""
    endif
  endif
  let v:errmsg = ""
  silent! execute "ijump! ".c." ".s
  if v:errmsg == ""
    if a:action[0] == "v"
      " Initial version
      " execute "normal! ".visualmode().diff."\<Space>"
      " Bug fixfor single character visual [<Tab>:
      if diff
        execute "normal! ".visualmode().diff."\<Space>"
      else
        execute "normal! ".visualmode()
      endif
    endif
  elseif a:action[0] == "v"
    normal! gv
  endif
endfunction

nmap <silent>[I :<C-u>cal OSearch("nl")<CR>
""nmap <silent>[<Tab> :<C-u>cal OSearch("nj")<CR>
vmap <silent>[I :<C-u>cal OSearch("vl")<CR>
""vmap <silent>[<Tab> :<C-u>cal OSearch("vj")<CR>

"simple and flawed
"vnoremap // y/<C-R>"<CR>
"
"selected text is interpreted as regex, 
"thus . * etc must be escaped :
"use of \V , aka "very no-magic"
"vnoremap // y/\V<C-R>"<CR>
"
"still insufficient, \ backslash char will make it choke
"vnoremap <expr> // 'y/\V'.escape(@",'\').'<CR>'
"
"Press * to search forwards for selected text, or # to search backwards.
"As normal, press n for next search, or N for previous.
"Handles multiline selection and search.
"Whitespace in the selection matches any whitespace when searching (searching for "hello world" will also find "hello" at the end of a line, with "world" at the start of the next line).
"Each search is placed in the search history allowing you to easily repeat previous searches.
"No registers are changed.
"
" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>


" easy fold and forget, key <F9> (remplaçé par <Leader>z )
inoremap <Leader>z <C-O>za
nnoremap <Leader>z za
onoremap <Leader>z <C-C>za
vnoremap <Leader>z zf

" Pick one safety clipboard hijacking insurance
inoremap <C-R>+ <C-R><C-R>+
"inoremap <C-R>+ <C-R><C-O>+
"inoremap <C-R>+ <C-G>u<C-\><C-O>"+gP
"inoremap <C-R>+ <C-G>ux<Esc>"=@+.'xy'<CR>gPFx"_2x"_s
"exe 'inoremap <script> <C-R>+ <C-G>u' . paste#paste_cmd['i']
"
"This illustrates the hijacking point. Executing the following puts some text in the a register.
"
":let @a = "abc\<Esc>:echo 'gotcha'\<CR>"
"
"After that, pressing i to enter insert mode, then typing Ctrl-R a inserts "abc" but then executes the echo command. The Vim procedure to insert the keys literally is to press Ctrl-R twice. That is, type Ctrl-R Ctrl-R a which will insert the escape and newline (carriage return) characters into the text

" Manpage
" in normal and visual mode, registers are pasted verbatim ! as is !
" in insert and command-line mode, registers are interpreted !
" mode ~= state+stream

"set tags=./.tags,.tags,./tags,tags
" nvim has 'tags' defaults to "./tags;,tags"

" PAS CLAIR
set hidden

"Use the directory of the related buffer 'browsedir bsdir option default: last
set browsedir=buffer

"set foldmethod=manual

" les deux lignes ci-dessous marche pas ?? (xdg-open n'appelle pas le bon env pq opam switch compiler etc ?)
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
":set rtp+=~/.opam/system/share/merlin/vim

"set rtp^="/home/milvi/.opam/system/share/ocp-indent/vim"
execute "set rtp^=" . g:opamshare . "/ocp-indent/vim"
"autocmd FileType ocaml source /home/milvi/.opam/system/share/ocp-indent/vim/indent/ocaml.vim

" opam install ocp-index 
" set rtp+=/home/milvi/.opam/4.08.1/share/ocp-index/vim
execute "set rtp^=" . g:opamshare . "/ocp-index/vim"


"au Syntax ocaml runtime! syntax/ocaml.vim


let maplocalleader="\_"

"neoformat key binding
nnoremap <leader>f :Neoformat<CR>
"can't format intervals
"vnoremap <silent> <leader>f :Neoformat<CR>


" Disable haskell-vim omnifunc (pq ? laissé en automatique)
"let g:haskellmode_completion_ghc = 0
autocmd FileType haskell nnoremap <buffer> <localleader>c :setlocal omnifunc=necoghc#omnifunc<CR>

" autocmd FileType haskell OU à-la-main échoue.
" LanguageClient fait omnifunc=LanguageClient#complete
"if (&ft=='haskell')
"    :setlocal omnifunc=necoghc#omnifunc
"endif

" FIN
