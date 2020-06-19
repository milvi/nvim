set termguicolors

set clipboard+=unnamedplus,unnamed

" === SHOW MATCH PAREN AND SET DELAY
set showmatch
set matchtime=3

" Theme ; ordonnancement et appel complexe des fichiers d'initialisation ;
" https://neovim.io/doc/user/options.html#'runtimepath'
" https://neovim.io/doc/user/starting.html#$VIMRUNTIME
" https://neovim.io/doc/user/syntax.html#:colorscheme
" https://neovim.io/doc/user/syntax.html#syncolor
" https://neovim.io/doc/user/syntax.html#syntax
" https://neovim.io/doc/user/usr_06.html
" :hi highlight et voisinage des entrées ci-dessus
"
"syntax enable
colorscheme mine


" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin()

" HEY, HEY, PLUG LITERALS
" Make sure you use single quotes

" === LEAN & MEAN STATUS/TABLINE FOR VIM THAT'S LIGHT AS AIR
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"patch builtin I A visual mode feature
Plug 'kana/vim-niceblock'

"Vim-cool disables search highlighting when you are done searching and re-enables it when you search again.
Plug 'romainl/vim-cool'

"Smooth scrolling done right
" attention remap S-Up etc.. conflicts my own window remapped moves
Plug 'psliwka/vim-smoothie'

"git wrapper(dependency)+ git log viewer
"Plug 'tpope/vim-fugitive'
"Plug 'junegunn/gv.vim'

"tabularize, align operators.
" godlygeek oldest
" junegunn cites godlygeek, it's hyper configurable
" tommcdo made sneak + it's simple
Plug 'godlygeek/tabular'
"Plug 'junegunn/vim-easy-align'
Plug 'tommcdo/vim-lion'

"FAST MOTION F f T t but with s S 
Plug 'justinmk/vim-sneak'

"MORE text objects
"engine, to create text-obj
Plug 'kana/vim-textobj-user'

"TEXTOBJ INSTANCES,PLUGINS,ADDITIONS
"usage : ii, ai , iI, aI
Plug 'kana/vim-textobj-indent'

"A convenient text object for last pasted text
"Convenience for `[v`] : aP
Plug 'saaguero/vim-textobj-pastedtext'

"select parameters of functions : 'a,'  (super inutile en ML LOL)
"Plug 'sgur/vim-textobj-parameter'

"Text objects for entire buffer : ie, ae
Plug 'kana/vim-textobj-entire'

"Text objects for continuity space : iS, aS
Plug 'saihoooooooo/vim-textobj-space'

"Text objects for a comment but not nesting, buggy. ac, ic
"Plug 'thinca/vim-textobj-comment'
"Plug 'glts/vim-textobj-comment'


"Commentary all modes : gc
"can be done a mano:)))))
"Plug 'tpope/vim-commentary'

"The set of operator and textobject plugins to search/select/edit sandwiched textobjects.
"voir configuration pour le textobj
"Plug 'machakann/vim-sandwich'

"directory viewer
Plug 'justinmk/vim-dirvish'

"directory viewer async
"Easter egg
"Plug 'thinca/vim-portal'

"Enhanced multi-file search for Vim
"Plug 'wincent/ferret'

"Helps you win at grep.
Plug 'mhinz/vim-grepper'

"Land on window you chose like tmux's 'display-pane' | Useless ?
"Plug 't9md/vim-choosewin'

"Plug 'jremmen/vim-ripgrep'

"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'

Plug 'thinca/vim-qfreplace'
Plug 'sk1418/QFGrep'
" vim-qfedit enables you to edit the qf list freely as if it were a normal
" buffer. BREAKS QF IN VIM-GREPPER ? Weird behaviour for normal mode
"Plug 'itchyny/vim-qfedit'


" === PERFORM ALL YOUR VIM INSERT MODE COMPLETIONS WITH TAB
"Plug 'ervandew/supertab'

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'https://github.com/copy/deoplete-ocaml'


"Plug 'https://github.com/dense-analysis/ale'

"completion
Plug 'https://github.com/ajh17/VimCompletesMe'

"Haskell completion engine
Plug 'https://github.com/eagletmt/neco-ghc'

"Plug 'fsharp/vim-fsharp', {
"      \ 'for': 'fsharp',
"      \ 'do':  'make fsautocomplete',
"      \}

" === SLOW ?? OU FSHARP ?? CACAACACA !
" === C'EST AU CHARGEMENT POUR F#
"Plug 'vim-syntastic/syntastic'

" === DÉPENDANCE POUR SYNTASTIC ??
"Plug 'tpope/vim-fugitive'

" === RAINBOW PARENTHESIS FOR LISP ()()()((((())()(()))))
"Plug 'amdt/vim-niji'
"Plug 'kien/rainbow_parentheses.vim'


" === FAST MOTION ===
"Plug 'easymotion/vim-easymotion'

" === OCAML, integration of ocp-indent ===
" doesn't it conflict with neoformat ??
" deprecated, obsolete. voir indent dans ocaml/vim-ocaml
"Plug 'let-def/ocp-indent-vim'

" === utilise ocamlformat et ocp-indent pour formater
Plug 'sbdchd/neoformat'

" === vim-ocaml syntax files for vim/neovim
Plug 'ocaml/vim-ocaml'

" === LSP Language Server Protocol support
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
" Plug 'junegunn/fzf'

Plug 'ionide/Ionide-vim', {
      \ 'do':  'make fsautocomplete',
      \}


" toggles chrisdone/hindent plugin, autocmd etc
""superseded by neoformat""Plug 'alx741/vim-hindent'

" toggles jaspervdj/stylish-haskell, bufAutCmd etc
" manual shortcut, set to do nothing on save (disabled)
Plug 'alx741/vim-stylishask'
""superseded by neoformat"
"another one
"Plug 'nbouscal/vim-stylish-haskell'

"idem
Plug 'alx741/vim-hindent'

" [pourri] LSP client, haskell plugins pref
"Plug 'neoclide/coc.nvim', {'branch': 'release'}


" (Optional) Multi-entry selection UI.
"Plug 'junegunn/fzf'


" ghcid buffer for neovim, broken , :Ghcid -c \\"stack repl" , wtf ?
"Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }

"HASKELL syntax files
Plug 'neovimhaskell/haskell-vim'

"funky bonus haskell
"Plug 'eagletmt/ghcmod-vim'
"Plug 'Shougo/vimproc.vim', {'do' : 'make'}



" Initialize plugin system
call plug#end()

"=== END OF PLUGS

" Always draw the signcolumn.
set signcolumn=yes

"from vimcompletesme
set completeopt+=longest

" set relativenumber
set number

let mapleader = ","



let g:fzf_preview_window = ''


" CONFIG choosewin
" invoke with '-'
"nmap  +  <Plug>(choosewin)
" if you want to use overlay feature
"let g:choosewin_overlay_enable = 1


let g:FerretQFOptions=0
let g:FerretMap = 0
let g:FerretQFMap = 0

"let g:lion_squeeze_spaces = 0
"let g:lion_map_right = 'gl'
"let g:lion_map_left = 'gL'

"text objects all plugins
"let g:vim_textobj_parameter_mapping = ','
let g:pastedtext_select_key = 'aP'
let g:textobj_sandwich_no_default_key_mappings = 1
"omap ix <Plug>(textobj-sandwich-auto-i)
"xmap ix <Plug>(textobj-sandwich-auto-i)
"omap ax <Plug>(textobj-sandwich-auto-a)
"xmap ax <Plug>(textobj-sandwich-auto-a)


"vim-grepper
" -buffer, -buffers
nnoremap <leader>* :Grepper -tool rg -cword -noprompt -buffer<cr>
nnoremap <leader>g :Grepper -tool rg -buffer<cr>
nnoremap <leader>G :Grepper -tool rg<cr>
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" Optional. The default behaviour should work for most users.
let g:grepper               = {}
let g:grepper.tools         = ['rg','git']
let g:grepper.operator      = {}
let g:grepper.operator.buffer = 1
"let g:grepper.simple_prompt = 1










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

"FAST MOTION
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1
let g:sneak#target_labels = ";sftunq/SFGHLTUNRMQZ?0éèçà§œŒù¹²"

"DEBUGGING VARIABLES, DEBUG MODE FOR NVIM
 " only affects the verbosity of Neoformat
"let g:neoformat_verbose = 1
" also increases verbosity of the editor as a whole
"let &verbose            = 1

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

"let g:ormolu_ghc_opt=["TypeApplications", \\\\\\\""""\"RankNTypes"]

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


" === F# FSHARP CONFIG === (DEFAULT_ARG)
" By default your F# files will be syntax/type checked on every open/save of a vim buffer as well as after 500ms of inactivity in Normal mode. 
" In case you would prefer not to have you errors checked continuously add the following to your vimrc (0)
"let g:fsharp_only_check_errors_on_write = 1

" In case you prefer to disable the syntax checker, add the following to your vimrc ('syntax')
"let g:syntastic_fsharp_checkers = ['']

" If you find the default bindings unsuitable then it is possible to turn them off (1)
"let g:fsharp_map_keys = 0

" Automatically open the result of an FsiEval (fsi-out buffer) in a vsplit window (0)
"let g:fsharp_fsi_show_auto_open = 1

" This sets maps hereafter in a if directive.
" If you find the default bindings unsuitable then it is possible to turn them off. (1)
"let g:fsharp_map_keys = 0

" === Overrides the default mappings ===


" Override the default prefix of <leader>
"let g:fsharp_map_prefix = 'cp'
let g:fsharp_map_typecheck = 't'
let g:fsharp_map_typehelp = 'h'
let g:fsharp_map_gotodecl = 'g'
let g:fsharp_map_gobackfromdecl = 'b'
let g:fsharp_map_fsiinput = 'l'
"
let g:fsharp_map_fsisendline = 'e'
let g:fsharp_map_fsisendsel = 'e'



"let g:LanguageClient_serverCommands = { 'haskell': ['hie-wrapper', '--lsp'] }
"let g:LanguageClient_settingsPath = \"""/home/milvi/.hie_settings.json"
"let g:LanguageClient_rootMarkers = {                                      
"         \ 'haskell': ['*.cabal','stack.yaml','cabal.project','package.yaml']                                          
"         \ }

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


" my own tweaks
"
" recommended by Syntastic plugin but how does it do ? 
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
" .... and this .... 
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0


" configuration deoplete
let g:deoplete#enable_at_startup = 1
" other completion sources suggested to disable
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources.ocaml = ['buffer', 'around', 'member', 'tag']

" no delay before completion
let g:deoplete#auto_complete_delay = 0

"Integration with [deoplete](https://github.com/Shougo/deoplete.nvim)
"for automatic, asynchronous completion with NeoVim can be enabled with: >
if !exists('g:deoplete#omni_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
let g:deoplete#omni#input_patterns.ocaml = '[^. *\t]\.\w*|\s\w*|#'

"inoremap <expr><C-l> deoplete#complete_common_string()

"call deoplete#custom#option({
"  \ 'auto_complete_popup': 'manual',
"  \ })
"inoremap <silent><expr> <TAB>
"  \ pumvisible() ? "\<C-n>" :
"  \ <SID>check_back_space() ? "\<Tab>" :
"  \ deoplete#manual_complete()
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction





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



" Clean Search
"elle existe déjà" command C let @/=""

" reindet buffer
map <Leader>i mzgg=G`z

" Switch between Vim window splits easily
" Alt+arrow Navigation
" Alt+leftarrow will go one window left, etc.
" Alt A-* Shift S-*
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Maximize current window
" Rq: ^W ie CTRL-W supprime le mot avant le curseur en mode ins
" CTRL-W _	Set current window height to N (default: highest possible)
"map <F5> <C-W>_<C-W><Bar>

"highlight current line
nnoremap <Leader>c :set cursorline!<CR>

" voir hi ColorColumn
set colorcolumn=84

" :noh
" or :nohlsearch to temporarily disable search highlighting until the next search.
" To clear the last used search pattern:
"
" :let @/ = ""
" To turn off highlighting until the next search:
" 
" :noh
" Or turn off highlighting completely:
"
" set nohlsearch
" Or, to toggle it:
" 
" set hlsearch!
" ...
" nnoremap <F3> :set hlsearch!<CR>
nnoremap <Leader>h :nohlsearch<CR>

" remapped Shift-Tab so I could easily insert real tabs at the beginning of the line
"inoremap <S-Tab> <C-V><Tab>

set tabstop=4
set expandtab
" makes the spaces feel like real tabs
"set softtabstop=4
set shiftwidth=4 

" What would be the chances that your keyboard sends an accented letter instead of a ` followed by a character? – romainl Jan 10 '13 at 10:41
" @romainl. That is exactly what is happening. The keyboard driver is trying to send an accented letter. So it works with `<Space><mark>. Thanks for the help. – Kei Jan 10 '13 at 17:34
" FYI: vim-signature does remap this by default: n `] * :<C-U>call signature#mark#Goto("next", "spot", "alpha")<CR> – Keith Hughitt 

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
nnoremap <silent> gr xph
nnoremap <silent> gR Xp

"To use gw to swap the current word with the next, without changing cursor position
"nnoremap <silent> gw "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohlsearch<CR>

"To use gl to swap the current word with the previous, keeping cursor on current word
"nnoremap <silent> gl "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohlsearch<CR>

"To use gr to swap the current word with the next, keeping cursor on current word
"nnoremap <silent> gr "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o>/\w\+\_W\+<CR><c-l>:nohlsearch<CR>

"To use g{ to swap the current paragraph with the next:
"nnoremap g{ {dap}p{
""For ISO/IEC_8859-1 Latin-1 Supplement characters, substitute all \w instances with [0-9A-Za-zÀ-ÖØ-öø-ÿ_] and all  \_W instances with \_[^0-9A-Za-zÀ-ÖØ-öø-ÿ_]


" To use this mapping: first, delete,?yank a piece of texte. Then, use visual
" mode to select some other text piece, and press Ctrl-X. The two pieces of 
" text should then be swapped.
" LOOOL broken. ça marche que sur un delete le retour `.
"vnoremap <C-X> <Esc>`.``gvP``P


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
" wtf ? c'est pas déjà en natif ça ?
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

"see last line


"set rtp^="/home/milvi/.opam/system/share/ocp-indent/vim"
" opamshare previously definied
" pour tout opam switch env
execute "set rtp^=" . g:opamshare . "/ocp-indent/vim"
"autocmd FileType ocaml source /home/milvi/.opam/system/share/ocp-indent/vim/indent/ocaml.vim

" opam install ocp-index 
" set rtp+=/home/milvi/.opam/4.08.1/share/ocp-index/vim
execute "set rtp+=" . g:opamshare . "/ocp-index/vim"

" " LAST LINE
"" should appear last, after loading package or plugin
"" adjustments
" 'merlin' . ici disable syntastic pour ocaml
let g:syntastic_ocaml_checkers = ['']
let g:syntastic_haskell_checkers = ['']

" ervandew/supertab
"au FileType ocaml call SuperTabSetDefaultCompletionType("<c-x><c-o>")

let maplocalleader="\_"

"au Syntax ocaml runtime! syntax/ocaml.vim


"neoformat key binding
nnoremap <leader>f :Neoformat<CR>
"can't format intervals"
vnoremap <silent> <leader>f :Neoformat<CR>

"Fsharp tooltips (show)
" set updatetime=<ms>    
" default to 4s
if has('nvim') && exists('*nvim_open_win')
  augroup FSharpShowTooltip
    autocmd!
    autocmd CursorHold *.fs,*.fsi,*.fsx call fsharp#showTooltip()
  augroup END
endif

"let g:necoghc_debug = 1
" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
"[broken by autozimu redefinition] 
"won't work but for show
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
"has to be manually reinvoked
autocmd FileType haskell nnoremap <buffer> <localleader>c :setlocal omnifunc=necoghc#omnifunc<CR>
"how to enable neco-ghc with VimCompletesMe
"(woops, wrong plugin!)let g:ycm_semantic_triggers = {'haskell' : ['.']}
"autocmd Filetype haskell let b:vcm_tab_complete = 'omni'
let b:vcm_tab_complete = 'omni'
"neco_ghc broken ?? wtf

"if (&ft=='haskell')
"    :setlocal omnifunc=necoghc#omnifunc
"endif

" disables automatic indent on file save (plugin behaviour)
" and it conflicts with neoformat !
let g:stylishask_on_save = 0
let g:hindent_on_save = 0

au Filetype haskell nnoremap <silent> <localleader>h :Hindent<CR>
au Filetype haskell nnoremap <silent> <localleader>s :Stylishask<CR>



nmap <leader>= :Tabularize /=<CR>
nmap <leader>- :Tabularize /-><CR>
nmap <leader># :Tabularize /#-}<CR>
nmap <leader>: :Tabularize /::<CR>
vmap <leader>= :Tabularize /=<CR>
vmap <leader>- :Tabularize /-><CR>
vmap <leader># :Tabularize /#-}<CR>
vmap <leader>: :Tabularize /::<CR>


"map <silent> ti :GhcModTypeInsert<CR>
"map <silent> tc :GhcModSplitFunCase<CR>
"map <silent> tq :GhcModeType<CR>
"map <silent> te :GhcModeTypeClear<CR>



vnoremap <M-/> <Esc>/\%V
nnoremap <M-/> /\%V

" FIN
