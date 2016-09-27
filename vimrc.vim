set runtimepath+=~/.vim_runtime
"switch on line numbering
set rnu

"set expandtab
"set tabstop=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
"Take care of indents for Java.
set autoindent
set shiftwidth=4
""Java anonymous classes. Sometimes, you have to use them.
set cinoptions+=j1

"disable Alt help key for mapping
set winaltkeys=no

set nocompatible              " be iMproved, required
filetype off                  " required

"Read PDF 
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78

"------------------------------------------------------------------------------------------------
"
" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
"" Plugin 'L9'
" " Git plugin not hosted on GitHub
"" Plugin 'git://git.wincent.com/command-t.git'
""" " git repos on your local machine (i.e. when working on your own plugin)
"" Plugin 'file:///home/trai/.vim/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
"" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
Plugin 'unite.vim'
"NERD TREE
Plugin 'The-NERD-tree'

"Auto-complete code
"Plugin 'Valloric/YouCompleteMe' 

"Relative number line meter :RN for toggling
Plugin 'RltvNmbr.vim'

Plugin 'terryma/vim-expand-region'

"Solarize colors
Plugin 'altercation/vim-colors-solarized'

"Auto close brace
Plugin 'Raimondi/delimitMate'

"Java AutoComplete
Plugin 'artur-shaik/vim-javacomplete2'

"Snippet
Plugin 'SirVer/ultisnips'

" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
"
"Supertab for YCM and UltiSnip
Plugin 'ervandew/supertab'

"Tag bar manage class for programs
Plugin 'majutsushi/tagbar'

"Surround
Plugin 'tpope/vim-surround'

"IndentLine Effect
Plugin 'Yggdroot/indentLine'

"Tab Manager
Plugin 'kien/tabman.vim'

"Syntastic syntax checking
Plugin 'scrooloose/syntastic'

"Replace With Register
"

 call vundle#end()            " required

 "----------------------------------------------------------------------
 
 "Tab manager
 let g:tabman_toggle = '<F7>'
 let g:tabman_focus  = '<Space>tf'

 "Switch tab
nmap <Space>tl :tablast<cr>
nmap <Space>th :tabfirst<cr>
nmap <Space>tk :tabnext<cr>
nmap <Space>tj :tabprevious<cr>
nmap <Space>to :tabclose<cr>
nmap <Space>tn :tabnew<cr>

 "Switch window
 map <C-l> :tabn<cr>
 map <C-h> :tabp<cr>
 map <C-j> :tabd<cr>
 map <C-k> :tabu<cr>

 "----------------------------------------------------------------------
 
"Indent Line setting 
 let g:indentLine_setColors = 239
 let g:indentLine_char = '┆'
 let g:indentLine_enabled = 1
nmap <Space>ti :IndentLinesToggle<ENTER>

"auto comment
autocmd Filetype apache setlocal //=#\ %s
 "----------------------------------------

 " make YCM compatible with UltiSnips (using supertab)
 let g:ycm_key_list_select_completion = ['<C-tab>', '<Down>']
 let g:ycm_key_list_previous_completion = ['<C-tab>', '<Up>']
 let g:SuperTabDefaultCompletionType = '<C-tab>'


 " " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
 "
 " " If you want :UltiSnipsEdit to split your window.
  let g:UltiSnipsEditSplit="vertical"
"------------------------------------------------------------------

"set relative when in normal and absolute in insert
nmap <Space>ta :set rnu!<ENTER>:set nu<ENTER>
nmap <Space>tr :set rnu<ENTER>

 "------------------------------------------------------------
 "
 "For Solarize schemes
 syntax enable
 set t_Co=256
 set background=dark
 color solarized
 
 "--------------------------------------------------
 
 filetype plugin indent on    " required
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

" --------------------------------------------------------------------------------------------

"NERDTree Auto Open
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


"Map key NERDTree
"Toggle
map <F2> :NERDTreeToggle<cr> 




"NerdTree
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


"----------------------------------------------------------
let java_comment_strings=1
let java_highlight_java_lang_ids=1

let java_mark_braces_in_parens_as_errors=1
let java_highlight_all=1
let java_highlight_debug=1
let java_ignore_javadoc=1
let java_highlight_java_lang_ids=1
let java_highlight_functions="style"
let java_minlines = 150

"Java complete
autocmd Filetype java setlocal omnifunc=javacomplete#Complete

"auto complete eclim
let g:EclimCompletionMethod = 'omnifunc'

execute pathogen#infect()

filetype plugin indent on

"syntax hightlighting
syntax on

highlight comment ctermfg=lightblue

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
e
