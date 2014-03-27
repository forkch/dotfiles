"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"      #
" ////###  ///
"  ///####  //
"  ///#####//
"  ///####//
" #///###//##
"##///##//####
" #///#//####
"  /////####
"  ////####
"  ///####
"  // ###
"      #
" ben's .vimrc
" bm@fork.ch
" $Id: .vimrc 234 2007-01-03 23:21:41Z fork $
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" I like my own colormap...                                                   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight Comment       term=bold     cterm=bold ctermfg=DarkBlue    ctermbg=NONE      gui=bold      guifg=Blue      guibg=LightGray
highlight Constant	term=NONE     cterm=NONE ctermfg=DarkRed     ctermbg=NONE      gui=NONE      guifg=Magenta   guibg=NONE
highlight Special	term=bold     cterm=NONE ctermfg=DarkMagenta ctermbg=NONE      gui=NONE      guifg=SlateBlue guibg=NONE
highlight Identifier	term=NONE     cterm=NONE ctermfg=DarkCyan    ctermbg=NONE      gui=NONE      guifg=DarkCyan  guibg=NONE
highlight Statement	term=bold     cterm=NONE ctermfg=Brown       ctermbg=NONE      gui=bold      guifg=Brown     guibg=NONE
highlight PreProc	term=NONE     cterm=NONE ctermfg=DarkMagenta ctermbg=NONE      gui=NONE      guifg=Purple    guibg=NONE
highlight Type		term=NONE     cterm=NONE ctermfg=DarkGreen   ctermbg=NONE      gui=bold      guifg=SeaGreen  guibg=NONE
highlight Underlined	term=NONE     cterm=NONE ctermfg=DarkMagenta ctermbg=NONE      gui=underline guifg=SlateBlue
highlight Ignore	term=NONE     cterm=NONE ctermfg=NONE        ctermbg=NONE      gui=NONE      guifg=bg        guibg=NONE
highlight Error		term=reverse  cterm=NONE ctermfg=Black       ctermbg=Red       gui=NONE      guifg=White     guibg=Red
highlight Todo		term=standout cterm=NONE ctermfg=Black       ctermbg=Yellow    gui=NONE      guifg=Red       guibg=Yellow
highlight Folded	term=standout cterm=NONE ctermfg=Black       ctermbg=Grey    gui=NONE      guifg=Red       guibg=Yellow
highlight FoldColumn	term=standout cterm=NONE ctermfg=Black       ctermbg=Grey    gui=NONE      guifg=Red       guibg=Yellow
highlight MatchParen term=bold  ctermfg=6 ctermbg=NONE guibg=Cyan
highlight Search		term=standout cterm=NONE ctermfg=Black       ctermbg=Yellow    gui=NONE      guifg=Red       guibg=Yellow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


syntax on
filetype plugin indent on

set shellslash
set textwidth=80
set tabstop=2
set updatetime=1
set backspace=2         " more powerful backspacing
set shiftwidth=2
set showmode
set showmatch
set cindent		" always set autoindenting on
set autoindent
set smartindent
set cino=(s
set smarttab
set expandtab
set viminfo='20,\"50	" read/write a .viminfo file, don't store more than
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set suffixes=.bak,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set visualbell
set scrolloff=2
set laststatus=2
set statusline=\ b%n:%t%m%r%=#%L\|%p%%\ <%l,%v>\
set ignorecase		" Do case insensitive matching
set incsearch		" Incremental search
set encoding=utf-8
"set efm=%A%f:%l:\ %m,%-Z%p^,%-C%.%#             "javac errorformat
"set errorformat=%f:%l:%*\\s%m
set dictionary=~/.vimKeywords

set grepprg=grep\ -r\ -n
imap \q <ESC>i//TODO<SPACE>
map  \q i//TODO<SPACE>
imap \w <ESC>:grep TODO * <CR> :copen <CR>
map  \w :grep TODO * <CR> :copen <CR> 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=indent
set foldlevel=0
set nofoldenable
set foldnestmax=2
set fillchars=stl:_,stlnc:-,vert:\|,fold:\ ,diff:-
set nofoldenable
set foldcolumn=0

map F :let &fen = !&fen<CR>

if &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
  set t_Co=16
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Minibufexpl
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
let g:miniBufExplorerDebugMode = 0
if g:miniBufExplMapCTabSwitchBufs
  noremap <C-L>   :call <SID>CycleBuffer(1)<CR>:<BS>
  noremap <C-H> :call <SID>CycleBuffer(0)<CR>:<BS>
endif
nnoremap <F5> :TMiniBufExplorer<CR>
"noremap <C-L>   :tabnext<CR>
"noremap <C-H> :tabprevious<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JAVA
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let b:jcommenter_class_author='Benjamin Mueller'
let b:jcommenter_file_author='Benjamin Mueller'
map C :call JCommentWriter()<CR>
let java_allow_cpp_keywords=1
let java_highlight_functions="style"
let java_highlight_functions = 1 " old one?...
imap sop System.out.println(
") "
map gf <C-W>f
map gc gdb<C-W>f 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" XML
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map ix :%!xmllint --noent --format --encode UTF-8 -<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufRead *.tex nmap qm :!make view<CR><CR>:cw<CR>
autocmd BufRead *.tex nmap mm :!make view<CR>

imap deds Dedicated-Server 
map ,# :call CommentLineToEnd('#')<CR>+
map ,* :call CommentLinePincer('/* ', ' */')<CR>+ 
map ,/ :call CommentLineToEnd('//')<CR>+
nmap qm :make<CR><CR>:cw<CR>
nmap qr :!!<CR>
nmap qd :make debug<CR>
nmap qs :source ~/.vim/compiler/scons.vim<CR>
nmap qw :w!<CR>
nmap mm :w<CR>:make<CR>
nmap mc :w<CR>:make clean<CR>
nmap mt :w<CR>:make test<CR>
nmap mv :w<CR>:make view<CR>
nmap qq :bdelete<CR>:syntax enable<CR>
nmap qa :qall!<CR>
imap bemu Benjamin Mueller
nmap <C-i> :set nocindent noautoindent nosmartindent comments=<CR>
nmap <C-I> :set cindent autoindent smartindent comments=sr:/*,mb:*,el:*/,://<CR>

" end .vimrc
