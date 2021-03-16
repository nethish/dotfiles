" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim

" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
if &diffopt !~# 'internal'
  set diffexpr=MyDiff()
endif
function! MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

set vb t_vb=
" Use vim, not vi api
set nocompatible              " be iMproved, required
filetype off                  " required
" set :RltvNmbr
" Switch syntax highlighting on, when the terminal has colors
syntax on
set fillchars+=vert:\ 
set t_Co=256
" hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE
" No swap file
set noswapfile

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
autocmd FileType python setlocal expandtab shiftwidth=2 sts=2

nnoremap <SPACE> <Nop>
let mapleader=" "
set clipboard=unnamed
" Always show cursor
set ruler

" Show incomple commands
set showcmd

" Incremental searching (serach as you type)
set incsearch
" Highlight search matches
set hlsearch
" Turn word wrap off
set nowrap

" Allow backspace to delete end of line, indent and start of line characters
set backspace=indent,eol,start

" Convert tabs to spaces
set expandtab
" Turn on line numbers
set relativenumber

" Always show status bar
set laststatus=2

" Set the status line to something useful
" set statusline=%f\ %=L:%l/%L\ %c (%p%%)

" Hide the toolbar
set guioptions-=T

" UTF encoding
set encoding=utf-8

" Use sustem clipboard
" https://stackoverflow.com/questions/8134647/copy-and-paste-in-vim-via-keyboard-between-different-mac-terminals
" set clipboard+=unnamedplus

" Don't show intro
" set shortmess+=I

" Highlight the current line
set cursorline

" Visual autocomplete for command menu (eg. :e ~/path/to/file)
set wildmenu
:set wildignorecase
" redraw only when we need to (don't redraw when execuring a macro)
set lazyredraw

" Highlight a matching [{()}] when cursor is placed on start/end character
set showmatch

filetype detect
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=JetBrains_Mono_Variable_Italic_:h9:W800:i:cANSI:qDRAFT
  endif
endif
:syntax on

" Show existing tab with 4 spaces
set tabstop=2
set colorcolumn=80
" When indenting with >, use 4 spaces
set shiftwidth=2

set nu
set mouse=a
set softtabstop=2
set smarttab
" Case Insensitivity Pattern Matching
set ignorecase
" Overrides ignorecase if pattern contains upcase
set smartcase
" Shift to the next round tab stop. 
set shiftround

set autoindent
set autowrite
" Autoload files that have changed outside of vim
set autoread


" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'https://github.com/tpope/vim-unimpaired'
Plugin 'https://github.com/tpope/vim-surround'
Plugin 'https://github.com/tomtom/tcomment_vim'

call vundle#end()            " required

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ

" set undodir=/tmp//

" CUSTOM MAPPINGS
set hidden
set noundofile
set nobackup
set nowritebackup

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

" The Leader keys
nnoremap <Leader>n :call NumberToggle()<cr>
map <Leader>sv :source I:\\Vim\\_vimrc<CR>

nnoremap U <C-R>
nnoremap <Leader>u ~
nnoremap <Leader>gu g~
map <C-c> "+y
map <C-v> "+gP
map <Leader>p "+p
map <Leader>P "+P
map <Leader>y "+y
map <Leader>cd :cd F:\Scripts\CP<CR>

" Fugitive
nmap <Leader>gs :Shell 
set splitright
set splitbelow
nmap <Leader>v :vsplit 
nmap <Leader>V :split 
nmap <Leader>q <C-W><C-C>
map <Leader>/ <C-_><C-_>
map // /<C-R>/
nnoremap <Leader>w :w<CR>
nnoremap :: :bp\|bd #<CR>

nmap <Leader>d :bd
nnoremap <Leader>r *``cgn
nnoremap <Leader>R :%s/<C-R><C-W>/
nnoremap <Leader>= gg=G``

nnoremap <Tab> <C-^>
map H ^
map L $
nnoremap <Leader>+ <C-A>
nnoremap <Leader>- <C-X>
noremap J 10j
noremap K 10k
nnoremap <Leader>ev :e I:\\Vim\\_vimrc<CR>

nnoremap <silent> <Leader><Leader> :<c-u>set hlsearch!<bar>set hlsearch?<CR>
nnoremap ' `
nmap Y :%y+<CR>
" nnoremap <Leader>af <C-x><C-f>
" nnoremap <Leader>al <C-x><C-l>

" Meta Keys
" nnoremap <A-j> <C-n>
" nnoremap <A-k> <C-p>
nmap <Leader>sc :source F:\\Scripts\\CP\\session.vim<CR>
" Control Keys

nnoremap <C-I> <C-W>l<C-W>l<C-W>k<C-W>k
nnoremap <C-O> <C-W>h<C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
" map <C-S> <Esc>:w!<CR>
" Use CtrlP for searching file names
nnoremap <silent> <C-Right> <c-w>>
nnoremap <silent> <C-Left> <c-w><
nnoremap <silent> <C-Up> <c-w>+
nnoremap <silent> <C-Down> <c-w>-
" map <C-_> gcc
set cmdheight=2

autocmd filetype cpp silent! nnoremap <C-b> :w <bar> !g++ -std=c++14 % -o %:r 2> output && %:r.exe < input > output<CR><CR>

autocmd filetype python silent! nnoremap <C-b> :w <bar> !python % < input > output 2>&1<CR><CR>

" autocmd filetype cpp nnoremap <C-b> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++11  % -o %:r && ./%:r <CR>
