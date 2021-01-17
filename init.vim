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
set wildignorecase
" redraw only when we need to (don't redraw when execuring a macro)
set lazyredraw

" Highlight a matching [{()}] when cursor is placed on start/end character
set showmatch

syntax on
set nobackup
set nowritebackup
" Show existing tab with 4 spaces
set tabstop=2
set colorcolumn=80
" When indenting with >, use 4 spaces
set shiftwidth=2
" if has("gui_running")
"   if has("gui_gtk2")
"     set guifont=Inconsolata\ 8
"   elseif has("gui_macvim")
"     set guifont=Menlo\ Regular:h14
"   elseif has("gui_win32")
"     " set guifont=JetBrains\ Mono\ NL:h9
"     set guifont=Consolas:h10
"     set linespace=0
"   endif
" endif

" set guioptions-=m  "menu bar
" set guioptions-=T  "toolbar

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

set cmdheight=2

call plug#begin('~/AppData/Local/nvim/plugged')
" below are some vim plugins for demonstration purpose.
" add the plugin you want to use here.
" Plug 'vim-airline/vim-airline'
" Plug 'https://github.com/tpope/vim-unimpaired'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-obsession'
Plug 'morhetz/gruvbox'
Plug 'https://github.com/tpope/vim-fugitive'
" Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim'
" coc-clangd coc-python coc-java coc-tsserver coc-html coc-css coc-json
" Plug 'https://github.com/kana/vim-textobj-indent'
Plug 'https://github.com/christoomey/vim-sort-motion'
Plug 'https://github.com/tomtom/tcomment_vim'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
call plug#end()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <C-J> 
      \ pumvisible() ? "\<C-n>" :
      \ coc#refresh()

inoremap <silent><expr> <C-K>
      \ pumvisible() ? "\<C-p>" :
      \ coc#refresh()

" inoremap <silent><expr> <Tab>
      " \ pumvisible() ? "\<C-n>" :
      " \ <SID>check_back_space() ? "\<Tab>" :
      " \ coc#refresh()

" CUSTOM MAPPINGS
set hidden
" set undofile

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

" The Leader keys
nnoremap <Leader>n :call NumberToggle()<cr>
map <Leader>sv :source C:/Users/nethish/AppData/Local/nvim/init.vim<CR>

nnoremap U <C-R>
nnoremap <Leader>u ~
nnoremap <Leader>gu g~
map <C-c> "+y
map <C-v> "+gP
map <Leader>p "+p
map <Leader>P "+P
map <Leader>y "+y
nnoremap <Leader>h * 
set splitright
set splitbelow
nmap <Leader>ss :vsplit 
nmap <Leader>st :split 
nmap <Leader>q <C-W><C-C>
map <Leader>c <C-_><C-_>
map // /<C-R>/
nnoremap <Leader>w :w<CR>
nnoremap :: :bp\|bd #<CR>
map <Leader>/ :Rg<CR>
nmap gd :cd %:p:h

nmap <Leader>d :bd
nnoremap <Leader>[ :<C-u>bprevious<CR>
nnoremap <Leader>] :<C-u>bnext<CR>
nnoremap <Leader>r *``cgn
nnoremap <Leader>R :%s/<C-R><C-W>/
nnoremap <Leader>= gg=G``
nnoremap <Leader>gr ggVG"_dP:w<CR>
" FZF FTW
nnoremap <Leader><Tab> :Buffers<CR>
nnoremap <Leader>f :Files F:\Scripts\
nnoremap <Leader>l :Lines<CR>
nnoremap <Leader>' :Marks<CR>

nnoremap <Tab> <C-^>
map H ^
map L $
nnoremap <Leader>ad <C-A>
nnoremap <Leader>aa <C-X>
noremap J 10j
noremap K 10k
nnoremap <Leader>ev :e C:\Users\nethish\AppData\Local\nvim\init.vim<CR>

nnoremap ; N
map <Leader>t :NERDTreeToggle<CR>
nnoremap <silent> <Leader><Leader> :<c-u>set hlsearch!<bar>set hlsearch?<CR>
nnoremap ' `
nmap Y :%y+<CR>
" nnoremap <Leader>af <C-x><C-f>
" nnoremap <Leader>al <C-x><C-l>

" Meta Keys
" nnoremap <A-j> <C-n>
" nnoremap <A-k> <C-p>
nmap <Leader>ec :source F://Scripts/CP/cpsession.vim<CR>
" Control Keys
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
" map <C-_> gcc
" autocmd filetype cpp silent nnoremap <C-b> :w <bar> !g++ -std=c++14 % -o %:r &> output && ./%:r < input > output<CR><CR>

" autocmd filetype python silent! nnoremap <C-b> :w <bar> !python3 % < input > output 2>&1<CR><CR>

" autocmd filetype cpp nnoremap <C-b> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++11  % -o %:r && ./%:r <CR>

