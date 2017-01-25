" 'clipboard'      'cb'    clipboard options
" 'digraph'        'dg'    enable the entering of digraphs in Insert mode
" 'gdefault'       'gd'    the ":substitute" flag 'g' is default on
" 'history'        'hi'    number of command-lines that are remembered
" 'hlsearch'       'hls'   highlight matches with last search pattern
" 'ignorecase'     'ic'    ignore case in search patterns
" 'incsearch'      'is'    show where search pattern typed so far matches
" 'matchpairs'     'mps'   pairs of characters that "%" can match
" 'nrformats'      'nf'    number formats recognized for CTRL-A command
" 'number'         'nu'    print the line number in front of each line
" 'relativenumber' 'rnu'   show the line number relative to the line with
"                          the cursor
" 'scroll'         'scr'   lines to scroll with CTRL-U and CTRL-D
" 'scrolljump'     'sj'    minimum number of lines to scroll
" 'scrolloff'      'so'    minimum nr. of lines above and below cursor
" 'selection'      'sel'   what type of selection to use
" 'showmode'       'smd'   message on status line to show current mode
" 'sidescroll'     'ss'    minimum number of columns to scroll horizontal
" 'sidescrolloff'  'siso'  min. nr. of columns to left and right of cursor
" 'smartcase'      'scs'   no ignore case when pattern has uppercase
" 'timeout'        'to'    use timeout for mapped key sequences
" 'timeoutlen'     'tm'    time that is waited for a mapped key sequence
" 'undolevels'     'ul'    maximum number of changes that can be undone
" 'viminfo'        'vi'    information to remember after restart
" 'visualbell'     'vb'    use visual bell instead of beeping
" 'wrapscan'       'ws'    searches wrap around the end of the file

let mapleader = ' '

set surround
set rnu


"Delete in insert
inoremap <A-n> <C-c>lXi
inoremap <A-m> <C-c>lxi

"Insert Mode motion
inoremap <A-;> <C-c>A

"Select
nnoremap <leader>qj vi{
nnoremap <leader>qk vi(
nnoremap <leader>ql vi[

"ESC map
inoremap <A-i> <C-c>
vnoremap <A-i> <C-c>
nnoremap <A-k> i

"Moving in Insert Mode
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l

"Delete space between lines
vnoremap <silent> <leader>J :g/^\s*$/d<CR>:noh<CR>

" nnoremap <C-n> <Down>
" nnoremap <C-p> <Up>

"Move lines up down
nnoremap <C-n> :m .+1<CR>==
nnoremap <C-m> :m .-2<CR>==
vnoremap <C-n> :m '>+1<CR>gv=gv
vnoremap <C-m> :m '<-2<CR>gv=gv

"Save
nnoremap <leader>w :w<cr>

" Ace Jump
" nnoremap <leader>s <C-;>
" vnoremap <leader>s <C-;>

" set number
" set incsearch hlsearch
" set ignorecase smartcase
" set clipboard=unnamed
" set scrolloff=5
" set showmode
" set surround

" inoremap jk <Esc>
" vnoremap jk <Esc>

" noremap  <c-f> <c-d>
" noremap  <c-b> <c-u>
" " VimMotionJump{Next,Previous}
" nnoremap <c-p> <c-i>
" nnoremap <c-[> <c-t>
" nnoremap <tab> <c-w>w

" nnoremap Y y$
" nnoremap Q @q

" nnoremap [c :action VcsShowPrevChangeMarker<cr>
" nnoremap ]c :action VcsShowNextChangeMarker<cr>

" nnoremap gcc :action CommentByLineComment<cr>

nnoremap <leader>fu :action FindUsages<cr>
nnoremap <leader>su :action ShowUsages<cr>
nnoremap <leader>cv :action ChangeView<cr>
" nnoremap <leader>bb :action ToggleLineBreakpoint<cr>
" nnoremap <leader>br :action ViewBreakpoints<cr>
nnoremap <leader>ic :action InspectCode<cr>
nnoremap <leader>oi :action OptimizeImports<cr>
nnoremap <leader>re :action RenameElement<cr>
nnoremap <leader>rf :action RenameFile<cr>
" nnoremap <leader>mv :action ActivateMavenProjectsToolWindow<cr>
" nnoremap <leader>dc :action ChooseDebugConfiguration<cr>
" nnoremap <leader>rc :action ChooseRunConfiguration<cr>
" nnoremap <leader>q  :action CloseActiveTab<cr>
nnoremap <leader>gi :action GotoImplementation<cr>
nnoremap <leader>gs :action GotoSuperMethod<cr>
nnoremap <leader>gd :action GotoDeclaration<cr>
" nnoremap <leader>gt :action GotoTest<cr>
" nnoremap <leader>tl Vy<cr>:action ActivateTerminalToolWindow<cr>
" vnoremap <leader>tl y<cr>:action ActivateTerminalToolWindow<cr>
" nnoremap ]e :action GotoNextError<cr>
" nnoremap [e :action GotoPreviousError<cr>

" " Cursive
" nnoremap <leader>W :action :cursive.actions.paredit/wrap-paren<cr>
" nnoremap <leader>w[ :action :cursive.actions.paredit/wrap-square<cr>
" nnoremap <leader>w{ :action :cursive.actions.paredit/wrap-curly<cr>
" nnoremap <leader>w" :action :cursive.actions.paredit/wrap-quotes<cr>
" nnoremap <leader>< :action :cursive.actions.paredit/barf-forwards<cr>
" nnoremap <leader>> :action :cursive.actions.paredit/slurp-forwards<cr>
"
"map <leader>qa :action $SelectAll<CR>
map <leader>qb :action GotoDeclaration<CR>
" map <leader>qc :action $Copy<CR><A-i>
" map <leader>qd :action EditorDuplicate<CR>
" map <leader>qe :action RecentFiles<CR>
" map <leader>qf :action Find<CR>
" map <leader>qg :action GotoLine<CR>
" map <leader>qh :action TypeHierarchy<CR>
map <leader>qi :action ImplementMethods<CR>
" map <leader>qm :action EditorScrollToCenter<CR>
" map <leader>qn :action FileChooser.NewFolder<CR>
" map <leader>qo :action MethodHierarchy.OverrideMethodAction<CR>
" map <leader>qp :action ParameterInfo<CR>
" map <leader>qq :action GuiDesigner.QuickJavadoc<CR>
" map <leader>qr :action Replace<CR>
" map <leader>qs :action SaveAll<CR>
" map <leader>qt :action Vcs.UpdateProject<CR>
" map <leader>qu :action GotoSuperMethod<CR>
" map <leader>qv :action $Paste<CR><A-i>
" map <leader>qw :action EditorSelectWord<CR>
" map <leader>qx :action $Cut<CR><A-i>
" map <leader>qy :action EditorDeleteLine<CR>
" map <leader>[ :action EditorCodeBlockStart<CR>
" map <leader>] :action EditorCodeBlockEnd<CR>
