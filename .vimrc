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

command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
  echo a:cmdline
  let expanded_cmdline = a:cmdline
  for part in split(a:cmdline, ' ')
     if part[0] =~ '\v[%#<]'
        let expanded_part = fnameescape(expand(part))
        let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
     endif
  endfor
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, 'You entered:    ' . a:cmdline)
  call setline(2, 'Expanded Form:  ' .expanded_cmdline)
  call setline(3,substitute(getline(2),'.','=','g'))
  execute '$read !'. expanded_cmdline
  setlocal nomodifiable
endfunction

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
:set wildignorecase
" redraw only when we need to (don't redraw when execuring a macro)
set lazyredraw

" Highlight a matching [{()}] when cursor is placed on start/end character
set showmatch

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

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

let g:ycm_autoclose_preview_window_after_completion = 1

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'ycm-core/YouCompleteMe'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'https://tpope.io/vim/commentary.git'
Plugin 'https://github.com/kana/vim-textobj-user'
" Plugin 'https://github.com/kana/vim-textobj-entire'
Plugin 'https://github.com/tpope/vim-unimpaired'
Plugin 'https://github.com/tpope/vim-surround'
Plugin 'https://github.com/tpope/vim-obsession'
Plugin 'morhetz/gruvbox'
" Plugin 'https://github.com/ctrlpvim/ctrlp.vim'
Plugin 'https://github.com/tpope/vim-fugitive'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
 
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
 
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<S-TAB>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
Plugin 'https://github.com/junegunn/fzf.vim'
Plugin 'https://github.com/junegunn/fzf'
Plugin 'https://github.com/kana/vim-textobj-indent'
Plugin 'https://github.com/christoomey/vim-sort-motion'
" Plugin 'https://github.com/kana/vim-textobj-line'
Plugin 'https://github.com/vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
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
map <Leader>s :source ~/.vimrc<CR>

nnoremap U <C-R>
nnoremap <Leader>u ~
nnoremap <Leader>gu g~
map <C-c> "+y
map <C-v> "+gP
map <Leader>p "+p
map <Leader>P "+P
map <Leader>y "+y
 
" Fugitive
nmap <Leader>gs :Shell 
set splitright
set splitbelow
nmap <Leader>v :vsplit 
nmap <Leader>V :split 
nmap <Leader>q <C-W><C-C>
map <Leader>c <C-_><C-_>
map // /<C-R>/
nnoremap <Leader>w :w<CR>
nnoremap :: :bp\|bd #<CR>
map <Leader>/ :Rg<CR>

nmap <Leader>d :bd
nnoremap <Leader>r *``cgn
nnoremap <Leader>R :%s/<C-R><C-W>/
nnoremap <Leader>= gg=G``
" FZF FTW
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>l :Lines<CR>
nnoremap <Leader>' :Marks<CR>

nnoremap <Tab> <C-^>
map H ^
map L $
nnoremap <Leader>+ <C-A>
nnoremap <Leader>- <C-X>
noremap J 10j
noremap K 10k
nnoremap <Leader>gv :e ~/.vimrc<CR>

map <Leader>t :NERDTreeToggle<CR>
nnoremap <silent> <Leader><Leader> :<c-u>set hlsearch!<bar>set hlsearch?<CR>
nnoremap ' `
nmap Y :%y+<CR>
" nnoremap <Leader>af <C-x><C-f>
" nnoremap <Leader>al <C-x><C-l>

" Meta Keys
" nnoremap <A-j> <C-n>
" nnoremap <A-k> <C-p>
nmap <Leader>gc :source ~/Scripts/mysession.vim<CR>
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
set cmdheight=2
autocmd filetype cpp silent nnoremap <C-b> :w <bar> !g++ -std=c++14 % -o %:r &> output && ./%:r < input > output<CR><CR>

autocmd filetype python silent! nnoremap <C-b> :w <bar> !python3 % < input > output 2>&1<CR><CR>

" autocmd filetype cpp nnoremap <C-b> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++11  % -o %:r && ./%:r <CR>

