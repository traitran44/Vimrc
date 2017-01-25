let mapleader = "\<Space>"

" let g:ackprg = "/home/username/bin/ack -s -H --nocolor --nogroup --column"
"Match tag
runtime macros/matchit.vim

"switch on line numbering
set rnu
set noswapfile

"Default setting
"make backspace delete
set backspace=indent,eol,start
set cursorline
set lazyredraw

"set expandtab
"set tabstop=4
set autoindent
set expandtab tabstop=8 softtabstop=0  shiftwidth=4 smarttab

"Take care of indents for Java.
" set shiftwidth=4
" set autoindent noexpandtab tabstop=4 shiftwidth=4
" set noet ci pi sts=0 sw=4 ts=4
"
""Java anonymous classes. Sometimes, you have to use them.
"set cinoptions+=j1

"disable Alt help key for mapping
set winaltkeys=no

set nocompatible              " be iMproved, required
filetype off                  " required

"Read PDF 
" :command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78

"------------------------------------------------------------------------------------------------
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/trai/.vim/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.

" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

"  Install L9 and avoid a Naming conflict if you've already installed a
"  different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}


" Plugin 'unite.vim'

"Git plugin
Plugin 'tpope/vim-fugitive'

"NERD TREE
Plugin 'The-NERD-tree'

"Auto-complete code
Plugin 'Valloric/YouCompleteMe' 

Plugin 'terryma/vim-expand-region'

"Auto close brace
Plugin 'Raimondi/delimitMate'

"Java AutoComplete
" Plugin 'artur-shaik/vim-javacomplete2'

"Snippet
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

"Supertab for YCM and UltiSnip
Plugin 'ervandew/supertab'

"Tag bar manage class for programs
Plugin 'majutsushi/tagbar'

"Surround
Plugin 'tpope/vim-surround'

"IndentLine Effect
" Plugin 'Yggdroot/indentLine'

"Replace With Register
Plugin 'ReplaceWithRegister'

"Navigation
Plugin 'FuzzyFinder'

"Avoid name confliction
Plugin 'L9'

"Color schemes
Plugin 'morhetz/gruvbox'

"status bar
Plugin 'itchyny/lightline.vim'
"
"Javascript
" Plugin 'Shutnik/jshint2.vim'

"Easy motion
Plugin 'easymotion/vim-easymotion'

"Html CSS edit
Plugin 'mattn/emmet-vim'

"Tmux
Plugin 'christoomey/vim-tmux-navigator'

"Tags matching
Plugin 'valloric/MatchTagAlways'

Plugin 'commentary.vim'

"syntax js
" Plugin 'othree/javascript-libraries-syntax.vim'

"Highlight
Plugin 'vim-syntastic/syntastic'

"Repeat vim
Plugin 'tpope/vim-repeat'

"1 NERDTree
Plugin 'jistr/vim-nerdtree-tabs'

"Angular
Plugin 'burnettk/vim-angular'

"C/C++
Plugin 'c.vim'

call vundle#end()            " required

filetype plugin indent on


autocmd Filetype plugin indent on    " required

" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
"---------------------------------------------------------------------------------

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
" PlugInstall

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" On-demand loading
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Add plugins to &runtimepath
call plug#end()

"---------------------------------------------------------------------------------
"Emmet
let g:user_emmet_leader_key='<C-f>'


"---------------------------------------------------------------------------------
"FZF option
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" Customize fzf colors to match your color scheme
" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Normal'],
"   \ 'bg':      ['bg', 'Normal'],
"   \ 'hl':      ['fg', 'Comment'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   \ 'hl+':     ['fg', 'Statement'],
"   \ 'info':    ['fg', 'PreProc'],
"   \ 'prompt':  ['fg', 'Conditional'],
"   \ 'pointer': ['fg', 'Exception'],
"   \ 'marker':  ['fg', 'Keyword'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.

let g:fzf_history_dir = '~/.local/share/fzf-history'

nmap <leader><tab>h :Files ~<CR>
nmap <leader><tab>c :Files ./<CR>

"Fix Alt mapping
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50

"Delete in insert
inoremap <M-l> <C-c>A;<C-c>

"exit Insert map
inoremap <M-i> <C-c>
vnoremap <M-i> <C-c>


" Insert mode completion
map <c-x><c-k> <plug>(fzf-complete-word)
map <c-x><c-f> <plug>(fzf-complete-path)
map <c-x><c-j> <plug>(fzf-complete-file-ag)
map <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

"EasyMotion
"Case insensitive
let g:EasyMotion_smartcase = 1

" "commandT setting
" let g:CommandTFileScanner="find"
" let g:CommandTMaxFiles="200000"

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['jshint']

"Ultisnips
let g:UltiSnipsSnippetDirectories=["/home/trai/.vim/bundle/vim-snippets/UltiSnips", "/home/trai/.vim/bundle/vim-snippets/UltiSnips/angular-vim-snippets/UltiSnips"]

"html indent
let g:html_indent_script1 = "inc" 
let g:html_indent_style1 = "inc" 
let g:html_indent_inctags = "html,body,head"
"----------------------------------------------------------------------
" autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
" autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1
"----------------------------------------------------------------------

"Stop Highlight
nnoremap <silent> <leader><ESC> :noh<CR><ESC>

"Command-t mapping
" nmap <silent> <Leader>ft <Plug>(CommandT)
" nmap <silent> <Leader>fb <Plug>(CommandTBuffer)
" nmap <silent> <Leader>fj <Plug>(CommandTJump)

"Tmux mapping
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-/> :TmuxNavigatePrevious<cr>
"Switch tab
nmap <leader>tl :tablast<cr>
nmap <leader>th :tabfirst<cr>
nmap <leader>tk :tabnext<cr>
nmap <leader>tj :tabprevious<cr>
nmap <leader>to :tabclose<cr>
nmap <leader>tn :tabnew<cr>

"Max/min window
nnoremap <leader>M <C-W>\| <C-W>_
nnoremap <leader>m <C-W>=

"Switch tab
nnoremap <leader>1 1gt 
nnoremap <leader>2 2gt 
nnoremap <leader>3 3gt 
nnoremap <leader>4 4gt 
nnoremap <leader>5 5gt 
nnoremap <leader>6 6gt 
nnoremap <leader>7 7gt 
nnoremap <leader>8 8gt 
nnoremap <leader>9 9gt 

"Maximize/minize Window
" nnoremap <leader>ww <C-w>|
" nnoremap <leader>wh <C-w>_
" nnoremap <leader>wm 


"Toggle Tagbar
nmap <F8> :TagbarToggle<CR>

"Open html in browser
nnoremap <F12>f :exe ':silent !firefox %'<CR>:redraw!<CR>
nnoremap <F12>c :exe ':silent !google-chrome %'<CR>:redraw!<CR>

"Delete Space between line
vnoremap <silent> <leader>J :g/^\s*$/d<CR>:noh<CR>
vnoremap <silent> <leader>K :g/^/pu<CR>:noh<CR>

" Copy/Paste
nnoremap <leader>c "+yy
nnoremap <leader>v "+p
vnoremap <leader>c "+yy
vnoremap <leader>v "+p

"Move lines up down
nnoremap <C-n> :m .+1<CR>==
nnoremap <C-m> :m .-2<CR>==
vnoremap <C-n> :m '>+1<CR>gv=gv
vnoremap <C-m> :m '<-2<CR>gv=gv

"set relative when in normal and absolute in insert
nmap <leader>ta :set rnu!<ENTER>:set nu<ENTER>
nmap <leader>tr :set rnu<ENTER>

"Indent lines
nmap <leader>ti :IndentLinesToggle<ENTER>

"Map key NERDTree Toggle
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :NERDTreeFind<CR>
nmap <leader>rt :NERDTreeFocus<cr>R<c-w><c-p>
" nmap <F4> :NERDTreeTabsToggle<CR>

"search mapping

nmap <Leader>W <Plug>(easymotion-overwin-w)
nmap <leader>we <Plug>(easymotion-w)
nmap <leader>wq <Plug>(easymotion-b)
nmap <Leader>s <Plug>(easymotion-s)

vmap <Leader>W <Plug>(easymotion-overwin-w)
vmap <leader>we <Plug>(easymotion-w)
vmap <leader>wq <Plug>(easymotion-b)
vmap <Leader>s <Plug>(easymotion-s)

" nmap <leader>j <Plug>(easymotion-j)
" nmap <leader>k <Plug>(easymotion-k)
" nmap <leader>h <Plug>(easymotion-b)
" nmap <leader>H <Plug>(easymotion-B)
" nmap <leader>L <Plug>(easymotion-W)
" nmap <leader>e <Plug>(easymotion-e)
" nmap <leader>E <Plug>(easymotion-E)
" nmap <leader>f <Plug>(easymotion-f)
" nmap <leader>F <Plug>(easymotion-F)

" vmap <leader>h <Plug>(easymotion-b)
" vmap <leader>H <Plug>(easymotion-B)
" vmap <leader>l <Plug>(easymotion-w)
" vmap <leader>L <Plug>(easymotion-W)
" vmap <leader>e <Plug>(easymotion-e)
" vmap <leader>E <Plug>(easymotion-E)
" vmap <leader>f <Plug>(easymotion-f)
" vmap <leader>F <Plug>(easymotion-F)

" nmap <leader>f

"select mapping
nmap <leader>qj vi{
nmap <leader>qk vi(
nmap <leader>ql vi[
nmap <leader>qt vit

"Only work with Ultisnip
nmap <leader>jt icl<Tab><Tab>main<Tab><ESC>jomet<Tab>
" --------------------------------------------------
"Compile
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
if &filetype == 'c'
exec "!gcc % -o %<"
exec "!time ./%<"
elseif &filetype == 'cpp'
exec "!g++ % -o %<"
exec "!time ./%<"
elseif &filetype == 'java'
exec "!javac %"
exec "!time java -cp %:p:h %:t:r"
elseif &filetype == 'sh'
exec "!time bash %"
elseif &filetype == 'python'
exec "!time python2.7 %"
elseif &filetype == 'html'
exec "!google-chrome % &"
elseif &filetype == 'go'
exec "!go build %<"
exec "!time go run %"
elseif &filetype == 'mkd'
exec "!~/.vim/markdown.pl % > %.html &"
exec "!firefox %.html &"
endif
endfunc
"----------------------------------------------------------------------
" "AutoSave
" let g:auto_save = 0 
nmap <leader>wa :wa<CR>
 
"Tags update
" set tags=./tags,tags;$HOME
 " ctags optimization
set autochdir
set tags=tags;
let g:easytags_dynamic_files = 1
let g:easytags_always_enabled = 1
let g:easytags_async = 1
let g:easytags_file = '~/.vim/tags'
let g:easytags_opts = ['--fields=+l']

"Tab manager
let g:tabman_toggle = '<F7>'
let g:tabman_focus  = '<Space>tf'


"NERDTree line number
" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

"----------------------------------------------------------------------

"Indent Line setting 
" let g:indentLine_setColors = 239
" let g:indentLine_char = '┆'
" let g:indentLine_enabled = 1

"auto comment  comment=#\
autocmd Filetype apache setlocal //=#\ %s

"----------------------------------------

"YouCompleteME
set omnifunc=syntaxcomplete#Complete
set nocompatible
set runtimepath+=~/.vim/bundle/YouCompleteMe

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_auto_trigger = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_tags_files=1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-tab>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-tab>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-tab>'
let g:ycm_semantic_triggers =  {
       \   'c' : ['->', '.'],
       \   'objc' : ['->', '.'],
       \   'ocaml' : ['.', '#'],
       \   'cpp,objcpp' : ['->', '.', '::'],
       \   'perl' : ['->'],
       \   'php' : ['->', '::'],
       \   'cs,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
       \   'java' : ['.', '::'],
       \   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
       \   'ruby' : ['.', '::'],
       \   'lua' : ['.', ':'],
       \   'erlang' : [':'],
       \ }

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"------------------------------------------------------------------

"For Solarize schemes
syntax enable
set t_Co=256
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark="hard"
" --------------------------------------------------------------------------------------------

"NERDTree Auto Open
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


"NerdTree
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"----------------------------------------------------------
"Java

let java_comment_strings=1
let java_highlight_java_lang_ids=1

let java_mark_braces_in_parens_as_errors=1
let java_highlight_all=1
let java_highlight_debug=1
let java_ignore_javadoc=1
let java_highlight_java_lang_ids=1
let java_highlight_functions="style"
let java_minlines = 149

"------------------------------------------------------------
"C/C++
let g:C_UseTool_cmake = 'yes' 
let g:C_UseTool_doxygen = 'yes' 

"auto complete eclim
" let g:EclimCompletionMethod = 'omnifunc'

filetype plugin indent on

"syntax hightlighting
syntax on

highlight comment ctermfg=lightblue

