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
" set guioptions-=T

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

" redraw only when we need to (don't redraw when execuring a macro)
set lazyredraw

" Highlight a matching [{()}] when cursor is placed on start/end character
set showmatch

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

let g:ycm_autoclose_preview_window_after_insertion = 1

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'https://tpope.io/vim/commentary.git'
Plugin 'https://github.com/kana/vim-textobj-user'
Plugin 'https://github.com/kana/vim-textobj-entire'
Plugin 'https://github.com/tpope/vim-unimpaired'
Plugin 'https://github.com/tpope/vim-surround'
Plugin 'https://github.com/tpope/vim-obsession'
Plugin 'morhetz/gruvbox'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim'
Plugin 'https://github.com/tpope/vim-fugitive'
Plugin 'https://github.com/junegunn/fzf.vim'
Plugin 'https://github.com/kana/vim-textobj-indent'
Plugin 'https://github.com/christoomey/vim-sort-motion'
Plugin 'https://github.com/kana/vim-textobj-line'
Plugin 'https://github.com/vim-syntastic/syntastic'
Plugin 'https://github.com/tomtom/tcomment_vim'

call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ

filetype detect
set guifont=Inconsolata\ Bold\ 14
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

" set undodir=/tmp//

" CUSTOM MAPPINGS
set hidden
set undofile

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

" The Leader keys
nnoremap <Leader>n :call NumberToggle()<cr>
map <Leader>s :source ~/.vimrc<CR>

nnoremap U <C-R>
nnoremap <Leader>u ~
map <C-c> "+y
map <C-v> "+gP
map <Leader>p "+p
map <Leader>P "+P
map <Leader>y "+y
 
" Fugitive
nmap <Leader>gs :G<CR>
set splitright
set splitbelow
nmap <Leader>v :vsplit 
nmap <Leader>V :split 
nmap <Leader>c :close<CR>

nnoremap <Leader>w :w<CR>
nnoremap :: :bp\|bd #<CR>

nmap <Leader>d :bd
nnoremap <Leader>r *``cgn
nnoremap <Leader>R :%s/<C-R><C-W>/
nnoremap <Leader>= gg=G``
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>m :CtrlPMRU<CR>
nnoremap <Tab> <C-^>
map <Leader>h ^
map <Leader>l $
nnoremap <Leader>+ <C-A>
nnoremap <Leader>- <C-X>
nnoremap <Leader>j 10j
nnoremap <Leader>k 10k
nnoremap <Leader>gv :e ~/.vimrc<CR>

nnoremap ' `
nmap Y :%y+<CR>
" nnoremap <Leader>af <C-x><C-f>
" nnoremap <Leader>al <C-x><C-l>

" Meta Keys
" nnoremap <A-j> <C-n>
" nnoremap <A-k> <C-p>

" Control Keys
nnoremap <silent> <Leader><Leader> :<c-u>set hlsearch!<bar>set hlsearch?<CR>
colorscheme gruvbox
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
map <Leader>t :NERDTreeToggle<CR>
" map <C-_> gcc

autocmd filetype cpp nnoremap <C-b> :w <bar> !g++ -std=c++14 % -o %:r &> output && ./%:r < input > output<CR><CR>

autocmd filetype python nnoremap <C-b> :w <bar> !python3 % < input > output 2>&1<CR><CR>

" autocmd filetype cpp nnoremap <C-b> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++11  % -o %:r && ./%:r <CR>

