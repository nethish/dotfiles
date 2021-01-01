let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <Nul> <C-Space>
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
inoremap <expr> <C-P> pumvisible() ? "\" : "\"
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
inoremap <expr> <C-N> pumvisible() ? "\" : "\"
imap <silent> <C-_>9 <Plug>TComment_9
imap <silent> <C-_>8 <Plug>TComment_8
imap <silent> <C-_>7 <Plug>TComment_7
imap <silent> <C-_>6 <Plug>TComment_6
imap <silent> <C-_>5 <Plug>TComment_5
imap <silent> <C-_>4 <Plug>TComment_4
imap <silent> <C-_>3 <Plug>TComment_3
imap <silent> <C-_>2 <Plug>TComment_2
imap <silent> <C-_>1 <Plug>TComment_1
imap <silent> <C-_>s <Plug>TComment_s
imap <silent> <C-_>n <Plug>TComment_n
imap <silent> <C-_>a <Plug>TComment_a
imap <silent> <C-_>b <Plug>TComment_b
imap <silent> <C-_>i <Plug>TComment_i
imap <silent> <C-_>r <Plug>TComment_r
imap <silent> <C-_>  <Plug>TComment_ 
imap <silent> <C-_>p <Plug>TComment_p
imap <silent> <C-_><C-_> <Plug>TComment_
inoremap <Plug>TComment_<C-_>9 :call tcomment#SetOption("count", 9)
inoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
inoremap <Plug>TComment_<C-_>8 :call tcomment#SetOption("count", 8)
inoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
inoremap <Plug>TComment_<C-_>7 :call tcomment#SetOption("count", 7)
inoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
inoremap <Plug>TComment_<C-_>6 :call tcomment#SetOption("count", 6)
inoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
inoremap <Plug>TComment_<C-_>5 :call tcomment#SetOption("count", 5)
inoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
inoremap <Plug>TComment_<C-_>4 :call tcomment#SetOption("count", 4)
inoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
inoremap <Plug>TComment_<C-_>3 :call tcomment#SetOption("count", 3)
inoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
inoremap <Plug>TComment_<C-_>2 :call tcomment#SetOption("count", 2)
inoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
inoremap <Plug>TComment_<C-_>1 :call tcomment#SetOption("count", 1)
inoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
inoremap <Plug>TComment_<C-_>s :TCommentAs =&ft_
inoremap <Plug>TComment_s :TCommentAs =&ft_
inoremap <Plug>TComment_<C-_>n :TCommentAs =&ft 
inoremap <Plug>TComment_n :TCommentAs =&ft 
inoremap <Plug>TComment_<C-_>a :TCommentAs 
inoremap <Plug>TComment_a :TCommentAs 
inoremap <Plug>TComment_<C-_>b :TCommentBlock mode=#
inoremap <Plug>TComment_b :TCommentBlock mode=#
inoremap <Plug>TComment_<C-_>i v:TCommentInline mode=#
inoremap <Plug>TComment_i v:TCommentInline mode=#
inoremap <Plug>TComment_<C-_>r :TCommentRight
inoremap <Plug>TComment_r :TCommentRight
inoremap <Plug>TComment_<C-_>  :TComment 
inoremap <Plug>TComment_  :TComment 
inoremap <Plug>TComment_<C-_>p :norm! m`vip:TComment``
inoremap <Plug>TComment_p :norm! m`vip:TComment``
inoremap <Plug>TComment_<C-_><C-_> :TComment
inoremap <Plug>TComment_ :TComment
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
imap <S-Tab> <Plug>SuperTabBackward
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
nnoremap  :w | !python3 % < input > output 2>&1
map  "+y
snoremap <silent>  "_c
nnoremap  h
nnoremap 	 
nnoremap <NL> j
nnoremap  k
nnoremap  l
xnoremap <silent>  :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent>  :call UltiSnips#ExpandSnippet()
snoremap  "_c
map  "+gP
vmap <silent> 9 <Plug>TComment_9
nmap <silent> 9 <Plug>TComment_9
omap <silent> 9 <Plug>TComment_9
vmap <silent> 8 <Plug>TComment_8
nmap <silent> 8 <Plug>TComment_8
omap <silent> 8 <Plug>TComment_8
vmap <silent> 7 <Plug>TComment_7
nmap <silent> 7 <Plug>TComment_7
omap <silent> 7 <Plug>TComment_7
vmap <silent> 6 <Plug>TComment_6
nmap <silent> 6 <Plug>TComment_6
omap <silent> 6 <Plug>TComment_6
vmap <silent> 5 <Plug>TComment_5
nmap <silent> 5 <Plug>TComment_5
omap <silent> 5 <Plug>TComment_5
vmap <silent> 4 <Plug>TComment_4
nmap <silent> 4 <Plug>TComment_4
omap <silent> 4 <Plug>TComment_4
vmap <silent> 3 <Plug>TComment_3
nmap <silent> 3 <Plug>TComment_3
omap <silent> 3 <Plug>TComment_3
vmap <silent> 2 <Plug>TComment_2
nmap <silent> 2 <Plug>TComment_2
omap <silent> 2 <Plug>TComment_2
vmap <silent> 1 <Plug>TComment_1
nmap <silent> 1 <Plug>TComment_1
omap <silent> 1 <Plug>TComment_1
map <silent> ca <Plug>TComment_ca
map <silent> cc <Plug>TComment_cc
map <silent> s <Plug>TComment_s
map <silent> n <Plug>TComment_n
map <silent> a <Plug>TComment_a
map <silent> b <Plug>TComment_b
map <silent> i <Plug>TComment_i
map <silent> r <Plug>TComment_r
map <silent>   <Plug>TComment_ 
map <silent> p <Plug>TComment_p
vmap <silent>  <Plug>TComment_
nmap <silent>  <Plug>TComment_
omap <silent>  <Plug>TComment_
map <silent>  _s <Plug>TComment_ _s
map <silent>  _n <Plug>TComment_ _n
map <silent>  _a <Plug>TComment_ _a
map <silent>  _b <Plug>TComment_ _b
map <silent>  _r <Plug>TComment_ _r
xmap <silent>  _i <Plug>TComment_ _i
map <silent>  _  <Plug>TComment_ _ 
map <silent>  _p <Plug>TComment_ _p
xmap <silent>  __ <Plug>TComment_ __
nmap <silent>  __ <Plug>TComment_ __
smap <silent>  __ <Plug>TComment_ __
omap <silent>  __ <Plug>TComment_ __
nnoremap <silent>    :set hlsearch!|set hlsearch?
map  t :NERDTreeToggle
nnoremap  gv :e ~/.vimrc
nnoremap  - 
nnoremap  + 
nnoremap  ' :Marks
nnoremap  l :Lines
nnoremap  f :Files
nnoremap  b :Buffers
nnoremap  = gg=G``
nnoremap  R :%s//
nnoremap  r *``cgn
nmap  d :bd
map  / :Rg
nnoremap  w :w
map  c 
nmap  q :close
nmap  V :split 
nmap  v :vsplit 
nmap  gs :G
map  y "+y
map  P "+P
map  p "+p
nnoremap  u ~
map  s :source ~/.vimrc
nnoremap  n :call NumberToggle()
nnoremap   <Nop>
nnoremap ' `
map // //
nnoremap :: :bp|bd #
nnoremap =op <Nop>
map H ^
noremap J 10j
noremap K 10k
map L $
xmap S <Plug>VSurround
nnoremap U 
nmap Y :%y+
nmap [xx <Plug>unimpaired_line_xml_encode
xmap [x <Plug>unimpaired_xml_encode
nmap [x <Plug>unimpaired_xml_encode
nmap [uu <Plug>unimpaired_line_url_encode
xmap [u <Plug>unimpaired_url_encode
nmap [u <Plug>unimpaired_url_encode
nmap [yy <Plug>unimpaired_line_string_encode
xmap [y <Plug>unimpaired_string_encode
nmap [y <Plug>unimpaired_string_encode
nmap [P <Plug>unimpairedPutAbove
nmap [p <Plug>unimpairedPutAbove
xmap [e <Plug>unimpairedMoveSelectionUp
nmap [e <Plug>unimpairedMoveUp
nmap [  <Plug>unimpairedBlankUp
omap [n <Plug>unimpairedContextPrevious
xmap [n <Plug>unimpairedContextPrevious
nmap [n <Plug>unimpairedContextPrevious
nmap [f <Plug>unimpairedDirectoryPrevious
nmap [<C-T> <Plug>unimpairedTPPrevious
nmap [ <Plug>unimpairedTPPrevious
nmap [T <Plug>unimpairedTFirst
nmap [t <Plug>unimpairedTPrevious
nmap [<C-Q> <Plug>unimpairedQPFile
nmap [ <Plug>unimpairedQPFile
nmap [Q <Plug>unimpairedQFirst
nmap [q <Plug>unimpairedQPrevious
nmap [<C-L> <Plug>unimpairedLPFile
nmap [ <Plug>unimpairedLPFile
nmap [L <Plug>unimpairedLFirst
nmap [l <Plug>unimpairedLPrevious
nmap [B <Plug>unimpairedBFirst
nmap [b <Plug>unimpairedBPrevious
nmap [A <Plug>unimpairedAFirst
nmap [a <Plug>unimpairedAPrevious
nmap ]xx <Plug>unimpaired_line_xml_decode
xmap ]x <Plug>unimpaired_xml_decode
nmap ]x <Plug>unimpaired_xml_decode
nmap ]uu <Plug>unimpaired_line_url_decode
xmap ]u <Plug>unimpaired_url_decode
nmap ]u <Plug>unimpaired_url_decode
nmap ]yy <Plug>unimpaired_line_string_decode
xmap ]y <Plug>unimpaired_string_decode
nmap ]y <Plug>unimpaired_string_decode
nmap ]P <Plug>unimpairedPutBelow
nmap ]p <Plug>unimpairedPutBelow
xmap ]e <Plug>unimpairedMoveSelectionDown
nmap ]e <Plug>unimpairedMoveDown
nmap ]  <Plug>unimpairedBlankDown
omap ]n <Plug>unimpairedContextNext
xmap ]n <Plug>unimpairedContextNext
nmap ]n <Plug>unimpairedContextNext
nmap ]f <Plug>unimpairedDirectoryNext
nmap ]<C-T> <Plug>unimpairedTPNext
nmap ] <Plug>unimpairedTPNext
nmap ]T <Plug>unimpairedTLast
nmap ]t <Plug>unimpairedTNext
nmap ]<C-Q> <Plug>unimpairedQNFile
nmap ] <Plug>unimpairedQNFile
nmap ]Q <Plug>unimpairedQLast
nmap ]q <Plug>unimpairedQNext
nmap ]<C-L> <Plug>unimpairedLNFile
nmap ] <Plug>unimpairedLNFile
nmap ]L <Plug>unimpairedLLast
nmap ]l <Plug>unimpairedLNext
nmap ]B <Plug>unimpairedBLast
nmap ]b <Plug>unimpairedBNext
nmap ]A <Plug>unimpairedALast
nmap ]a <Plug>unimpairedANext
omap ai <Plug>(textobj-indent-a)
xmap ai <Plug>(textobj-indent-a)
omap aI <Plug>(textobj-indent-same-a)
xmap aI <Plug>(textobj-indent-same-a)
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nnoremap cop <Nop>
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap <silent> g> <Plug>TComment_Comment
nmap <silent> g>b <Plug>TComment_Commentb
nmap <silent> g>c <Plug>TComment_Commentc
nmap <silent> g> <Plug>TComment_Comment
xmap <silent> g< <Plug>TComment_Uncomment
nmap <silent> g<b <Plug>TComment_Uncommentb
nmap <silent> g<c <Plug>TComment_Uncommentc
nmap <silent> g< <Plug>TComment_Uncomment
xmap <silent> gc <Plug>TComment_gc
nmap <silent> gcb <Plug>TComment_gcb
nmap <silent> gcc <Plug>TComment_gcc
nmap <silent> gc9c <Plug>TComment_gc9c
nmap <silent> gc9 <Plug>TComment_gc9
nmap <silent> gc8c <Plug>TComment_gc8c
nmap <silent> gc8 <Plug>TComment_gc8
nmap <silent> gc7c <Plug>TComment_gc7c
nmap <silent> gc7 <Plug>TComment_gc7
nmap <silent> gc6c <Plug>TComment_gc6c
nmap <silent> gc6 <Plug>TComment_gc6
nmap <silent> gc5c <Plug>TComment_gc5c
nmap <silent> gc5 <Plug>TComment_gc5
nmap <silent> gc4c <Plug>TComment_gc4c
nmap <silent> gc4 <Plug>TComment_gc4
nmap <silent> gc3c <Plug>TComment_gc3c
nmap <silent> gc3 <Plug>TComment_gc3
nmap <silent> gc2c <Plug>TComment_gc2c
nmap <silent> gc2 <Plug>TComment_gc2
nmap <silent> gc1c <Plug>TComment_gc1c
nmap <silent> gc1 <Plug>TComment_gc1
nmap <silent> gc <Plug>TComment_gc
vmap gs <Plug>SortMotionVisual
nmap gss <Plug>SortLines
nmap gs <Plug>SortMotion
xmap gS <Plug>VgSurround
omap <silent> ic <Plug>TComment_ic
vmap <silent> ic <Plug>TComment_ic
omap ii <Plug>(textobj-indent-i)
xmap ii <Plug>(textobj-indent-i)
omap iI <Plug>(textobj-indent-same-i)
xmap iI <Plug>(textobj-indent-same-i)
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <Plug>(-fzf-:) :
nnoremap <Plug>(-fzf-/) /
nnoremap <Plug>(-fzf-vim-do) :execute g:__fzf_command
nnoremap <C-B> :w | !python3 % < input > output 2>&1
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
vmap <silent> <C-_>9 <Plug>TComment_9
nmap <silent> <C-_>9 <Plug>TComment_9
omap <silent> <C-_>9 <Plug>TComment_9
vmap <silent> <C-_>8 <Plug>TComment_8
nmap <silent> <C-_>8 <Plug>TComment_8
omap <silent> <C-_>8 <Plug>TComment_8
vmap <silent> <C-_>7 <Plug>TComment_7
nmap <silent> <C-_>7 <Plug>TComment_7
omap <silent> <C-_>7 <Plug>TComment_7
vmap <silent> <C-_>6 <Plug>TComment_6
nmap <silent> <C-_>6 <Plug>TComment_6
omap <silent> <C-_>6 <Plug>TComment_6
vmap <silent> <C-_>5 <Plug>TComment_5
nmap <silent> <C-_>5 <Plug>TComment_5
omap <silent> <C-_>5 <Plug>TComment_5
vmap <silent> <C-_>4 <Plug>TComment_4
nmap <silent> <C-_>4 <Plug>TComment_4
omap <silent> <C-_>4 <Plug>TComment_4
vmap <silent> <C-_>3 <Plug>TComment_3
nmap <silent> <C-_>3 <Plug>TComment_3
omap <silent> <C-_>3 <Plug>TComment_3
vmap <silent> <C-_>2 <Plug>TComment_2
nmap <silent> <C-_>2 <Plug>TComment_2
omap <silent> <C-_>2 <Plug>TComment_2
vmap <silent> <C-_>1 <Plug>TComment_1
nmap <silent> <C-_>1 <Plug>TComment_1
omap <silent> <C-_>1 <Plug>TComment_1
map <silent> <C-_>ca <Plug>TComment_ca
map <silent> <C-_>cc <Plug>TComment_cc
map <silent> <C-_>s <Plug>TComment_s
map <silent> <C-_>n <Plug>TComment_n
map <silent> <C-_>a <Plug>TComment_a
map <silent> <C-_>b <Plug>TComment_b
map <silent> <C-_>i <Plug>TComment_i
map <silent> <C-_>r <Plug>TComment_r
map <silent> <C-_>  <Plug>TComment_ 
map <silent> <C-_>p <Plug>TComment_p
vmap <silent> <C-_><C-_> <Plug>TComment_
nmap <silent> <C-_><C-_> <Plug>TComment_
omap <silent> <C-_><C-_> <Plug>TComment_
nnoremap <Plug>TComment_gc9c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc9cg@
nnoremap <Plug>TComment_gc8c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc8cg@
nnoremap <Plug>TComment_gc7c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc7cg@
nnoremap <Plug>TComment_gc6c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc6cg@
nnoremap <Plug>TComment_gc5c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc5cg@
nnoremap <Plug>TComment_gc4c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc4cg@
nnoremap <Plug>TComment_gc3c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc3cg@
nnoremap <Plug>TComment_gc2c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc2cg@
nnoremap <Plug>TComment_gc1c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc1cg@
vnoremap <Plug>TComment_<C-_>9 :call tcomment#SetOption("count", 9)
vnoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
nnoremap <Plug>TComment_<C-_>9 :call tcomment#SetOption("count", 9)
onoremap <Plug>TComment_<C-_>9 :call tcomment#SetOption("count", 9)
nnoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
onoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
vnoremap <Plug>TComment_<C-_>8 :call tcomment#SetOption("count", 8)
vnoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
nnoremap <Plug>TComment_<C-_>8 :call tcomment#SetOption("count", 8)
onoremap <Plug>TComment_<C-_>8 :call tcomment#SetOption("count", 8)
nnoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
onoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
vnoremap <Plug>TComment_<C-_>7 :call tcomment#SetOption("count", 7)
vnoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
nnoremap <Plug>TComment_<C-_>7 :call tcomment#SetOption("count", 7)
onoremap <Plug>TComment_<C-_>7 :call tcomment#SetOption("count", 7)
nnoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
onoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
vnoremap <Plug>TComment_<C-_>6 :call tcomment#SetOption("count", 6)
vnoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
nnoremap <Plug>TComment_<C-_>6 :call tcomment#SetOption("count", 6)
onoremap <Plug>TComment_<C-_>6 :call tcomment#SetOption("count", 6)
nnoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
onoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
vnoremap <Plug>TComment_<C-_>5 :call tcomment#SetOption("count", 5)
vnoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
nnoremap <Plug>TComment_<C-_>5 :call tcomment#SetOption("count", 5)
onoremap <Plug>TComment_<C-_>5 :call tcomment#SetOption("count", 5)
nnoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
onoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
vnoremap <Plug>TComment_<C-_>4 :call tcomment#SetOption("count", 4)
vnoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
nnoremap <Plug>TComment_<C-_>4 :call tcomment#SetOption("count", 4)
onoremap <Plug>TComment_<C-_>4 :call tcomment#SetOption("count", 4)
nnoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
onoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
vnoremap <Plug>TComment_<C-_>3 :call tcomment#SetOption("count", 3)
vnoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
nnoremap <Plug>TComment_<C-_>3 :call tcomment#SetOption("count", 3)
onoremap <Plug>TComment_<C-_>3 :call tcomment#SetOption("count", 3)
nnoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
onoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
vnoremap <Plug>TComment_<C-_>2 :call tcomment#SetOption("count", 2)
vnoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
nnoremap <Plug>TComment_<C-_>2 :call tcomment#SetOption("count", 2)
onoremap <Plug>TComment_<C-_>2 :call tcomment#SetOption("count", 2)
nnoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
onoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
vnoremap <Plug>TComment_<C-_>1 :call tcomment#SetOption("count", 1)
vnoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
nnoremap <Plug>TComment_<C-_>1 :call tcomment#SetOption("count", 1)
onoremap <Plug>TComment_<C-_>1 :call tcomment#SetOption("count", 1)
nnoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
onoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
nnoremap <Plug>TComment_gC :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gCg@
nnoremap <Plug>TComment_gc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gcg@
xnoremap <Plug>TComment_gc :TCommentMaybeInline
nnoremap <Plug>TComment_gcb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gcbg@
nnoremap <Plug>TComment_gcc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gccg@$
noremap <Plug>TComment_ic :call tcomment#textobject#InlineComment()
xnoremap <Plug>TComment_Comment :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | '<,'>TCommentMaybeInline!
nnoremap <Plug>TComment_Commentb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentbg@
nnoremap <Plug>TComment_Commentc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentcg@$
nnoremap <Plug>TComment_Commentl :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentlg@$
nnoremap <Plug>TComment_Comment :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentg@
xnoremap <Plug>TComment_Uncomment :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | call tcomment#SetOption("mode_extra", "U") | '<,'>TCommentMaybeInline
nnoremap <Plug>TComment_Uncommentb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentbg@
nnoremap <Plug>TComment_Uncommentc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentcg@$
nnoremap <Plug>TComment_Uncomment :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentg@
noremap <Plug>TComment_ _s :TCommentAs =&ft_
noremap <Plug>TComment_ _n :TCommentAs =&ft 
noremap <Plug>TComment_ _a :TCommentAs 
noremap <Plug>TComment_ _b :TCommentBlock
noremap <Plug>TComment_ _r :TCommentRight
xnoremap <Plug>TComment_ _i :TCommentInline
noremap <Plug>TComment_ _  :TComment 
noremap <Plug>TComment_ _p vip:TComment
xnoremap <Plug>TComment_ __ :TCommentMaybeInline
nnoremap <Plug>TComment_ __ :TComment
snoremap <Plug>TComment_ __ :TComment
onoremap <Plug>TComment_ __ :TComment
noremap <Plug>TComment_<C-_>ca :call tcomment#SetOption("as", input("Comment as: ", &filetype, "customlist,tcomment#complete#Complete"))
noremap <Plug>TComment_ca :call tcomment#SetOption("as", input("Comment as: ", &filetype, "customlist,tcomment#complete#Complete"))
noremap <Plug>TComment_<C-_>cc :call tcomment#SetOption("count", v:count1)
noremap <Plug>TComment_cc :call tcomment#SetOption("count", v:count1)
noremap <Plug>TComment_<C-_>s :TCommentAs =&ft_
noremap <Plug>TComment_s :TCommentAs =&ft_
noremap <Plug>TComment_<C-_>n :TCommentAs =&ft 
noremap <Plug>TComment_n :TCommentAs =&ft 
noremap <Plug>TComment_<C-_>a :TCommentAs 
noremap <Plug>TComment_a :TCommentAs 
noremap <Plug>TComment_<C-_>b :TCommentBlock
noremap <Plug>TComment_b :TCommentBlock
noremap <Plug>TComment_<C-_>i v:TCommentInline mode=I#
noremap <Plug>TComment_i v:TCommentInline mode=I#
noremap <Plug>TComment_<C-_>r :TCommentRight
noremap <Plug>TComment_r :TCommentRight
noremap <Plug>TComment_<C-_>  :TComment 
noremap <Plug>TComment_  :TComment 
noremap <Plug>TComment_<C-_>p m`vip:TComment``
noremap <Plug>TComment_p m`vip:TComment``
vnoremap <Plug>TComment_<C-_><C-_> :TCommentMaybeInline
vnoremap <Plug>TComment_ :TCommentMaybeInline
nnoremap <Plug>TComment_<C-_><C-_> :TComment
onoremap <Plug>TComment_<C-_><C-_> :TComment
nnoremap <Plug>TComment_ :TComment
onoremap <Plug>TComment_ :TComment
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
snoremap <C-R> "_c
snoremap <silent> <C-H> "_c
snoremap <silent> <Del> "_c
snoremap <silent> <BS> "_c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <Plug>unimpairedTPNext :exe "p".(v:count ? v:count : "")."tnext"
nnoremap <silent> <Plug>unimpairedTPPrevious :exe "p".(v:count ? v:count : "")."tprevious"
nnoremap <silent> <Plug>unimpairedTLast :exe "".(v:count ? v:count : "")."tlast"
nnoremap <silent> <Plug>unimpairedTFirst :exe "".(v:count ? v:count : "")."tfirst"
nnoremap <silent> <Plug>unimpairedTNext :exe "".(v:count ? v:count : "")."tnext"
nnoremap <silent> <Plug>unimpairedTPrevious :exe "".(v:count ? v:count : "")."tprevious"
nnoremap <silent> <Plug>unimpairedQNFile :exe "".(v:count ? v:count : "")."cnfile"zv
nnoremap <silent> <Plug>unimpairedQPFile :exe "".(v:count ? v:count : "")."cpfile"zv
nnoremap <silent> <Plug>unimpairedQLast :exe "".(v:count ? v:count : "")."clast"zv
nnoremap <silent> <Plug>unimpairedQFirst :exe "".(v:count ? v:count : "")."cfirst"zv
nnoremap <silent> <Plug>unimpairedQNext :exe "".(v:count ? v:count : "")."cnext"zv
nnoremap <silent> <Plug>unimpairedQPrevious :exe "".(v:count ? v:count : "")."cprevious"zv
nnoremap <silent> <Plug>unimpairedLNFile :exe "".(v:count ? v:count : "")."lnfile"zv
nnoremap <silent> <Plug>unimpairedLPFile :exe "".(v:count ? v:count : "")."lpfile"zv
nnoremap <silent> <Plug>unimpairedLLast :exe "".(v:count ? v:count : "")."llast"zv
nnoremap <silent> <Plug>unimpairedLFirst :exe "".(v:count ? v:count : "")."lfirst"zv
nnoremap <silent> <Plug>unimpairedLNext :exe "".(v:count ? v:count : "")."lnext"zv
nnoremap <silent> <Plug>unimpairedLPrevious :exe "".(v:count ? v:count : "")."lprevious"zv
nnoremap <silent> <Plug>unimpairedBLast :exe "".(v:count ? v:count : "")."blast"
nnoremap <silent> <Plug>unimpairedBFirst :exe "".(v:count ? v:count : "")."bfirst"
nnoremap <silent> <Plug>unimpairedBNext :exe "".(v:count ? v:count : "")."bnext"
nnoremap <silent> <Plug>unimpairedBPrevious :exe "".(v:count ? v:count : "")."bprevious"
nnoremap <silent> <Plug>unimpairedALast :exe "".(v:count ? v:count : "")."last"
nnoremap <silent> <Plug>unimpairedAFirst :exe "".(v:count ? v:count : "")."first"
nnoremap <silent> <Plug>unimpairedANext :exe "".(v:count ? v:count : "")."next"
nnoremap <silent> <Plug>unimpairedAPrevious :exe "".(v:count ? v:count : "")."previous"
nnoremap <silent> <C-Down> -
nnoremap <silent> <C-Up> +
nnoremap <silent> <C-Left> <
nnoremap <silent> <C-Right> >
nnoremap <C-H> h
nnoremap <C-L> l
nnoremap <C-K> k
nnoremap <C-J> j
map <C-V> "+gP
map <C-C> "+y
imap S <Plug>ISurround
imap s <Plug>Isurround
imap 	 <Plug>SuperTabForward
inoremap <silent>  =UltiSnips#ExpandSnippet()
inoremap <expr>  pumvisible() ? "\" : "\"
inoremap <expr>  pumvisible() ? "\" : "\"
imap  <Plug>Isurround
imap <silent> 9 <Plug>TComment_9
imap <silent> 8 <Plug>TComment_8
imap <silent> 7 <Plug>TComment_7
imap <silent> 6 <Plug>TComment_6
imap <silent> 5 <Plug>TComment_5
imap <silent> 4 <Plug>TComment_4
imap <silent> 3 <Plug>TComment_3
imap <silent> 2 <Plug>TComment_2
imap <silent> 1 <Plug>TComment_1
imap <silent> s <Plug>TComment_s
imap <silent> n <Plug>TComment_n
imap <silent> a <Plug>TComment_a
imap <silent> b <Plug>TComment_b
imap <silent> i <Plug>TComment_i
imap <silent> r <Plug>TComment_r
imap <silent>   <Plug>TComment_ 
imap <silent> p <Plug>TComment_p
imap <silent>  <Plug>TComment_
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set autowrite
set background=dark
set backspace=indent,eol,start
set backupdir=~/.cache/vim/backup//
set clipboard=unnamed
set completeopt=preview,menuone
set cpoptions=aAceFsB
set directory=~/.cache/vim/swap//
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fillchars=vert:|,fold:-,vert:\ 
set guifont=Inconsolata\ Bold\ 14
set helplang=en
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set mouse=a
set pyxversion=3
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/nerdtree,~/.vim/bundle/vim-airline,~/.vim/bundle/vim-airline-themes,~/.vim/bundle/vim-textobj-user,~/.vim/bundle/vim-unimpaired,~/.vim/bundle/vim-surround,~/.vim/bundle/vim-obsession,~/.vim/bundle/gruvbox,~/.vim/bundle/vim-fugitive,~/.vim/bundle/supertab,~/.vim/bundle/YouCompleteMe,~/.vim/bundle/ultisnips,~/.vim/bundle/fzf.vim,~/.vim/bundle/fzf,~/.vim/bundle/vim-textobj-indent,~/.vim/bundle/vim-sort-motion,~/.vim/bundle/syntastic,~/.vim/bundle/tcomment_vim,/usr/share/vim/vimfiles,/usr/share/vim/vim82,/usr/share/vim/vimfiles/after,~/.vim/after,~/.vim/bundle/Vundle.vim,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/nerdtree/after,~/.vim/bundle/vim-airline/after,~/.vim/bundle/vim-airline-themes/after,~/.vim/bundle/vim-textobj-user/after,~/.vim/bundle/vim-unimpaired/after,~/.vim/bundle/vim-surround/after,~/.vim/bundle/vim-obsession/after,~/.vim/bundle/gruvbox/after,~/.vim/bundle/vim-fugitive/after,~/.vim/bundle/supertab/after,~/.vim/bundle/YouCompleteMe/after,~/.vim/bundle/ultisnips/after,~/.vim/bundle/fzf.vim/after,~/.vim/bundle/fzf/after,~/.vim/bundle/vim-textobj-indent/after,~/.vim/bundle/vim-sort-motion/after,~/.vim/bundle/syntastic/after,~/.vim/bundle/tcomment_vim/after
set shiftround
set shiftwidth=2
set shortmess=filnxtToOSc
set showcmd
set showmatch
set smartcase
set smarttab
set softtabstop=2
set splitbelow
set splitright
set suffixes=.bak,~,.o,.info,.swp,.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.log,.out,.png,.toc
set noswapfile
set tabstop=2
set undodir=~/.cache/vim/undo//
set wildignore=*.pyc
set wildmenu
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Scripts
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd Py.py
$argadd Python.py
$argadd C++.cpp
$argadd CPP.cpp
edit Py.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 117 + 118) / 236)
exe '2resize ' . ((&lines * 29 + 30) / 61)
exe 'vert 2resize ' . ((&columns * 118 + 118) / 236)
exe '3resize ' . ((&lines * 29 + 30) / 61)
exe 'vert 3resize ' . ((&columns * 118 + 118) / 236)
argglobal
balt ~/.vimc
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=^\\s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(substitute(substitute(v:fname,b:grandparent_match,b:grandparent_sub,''),b:parent_match,b:parent_sub,''),b:child_match,b:child_sub,'g')
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],:,!^F,o,O,e,<:>,=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=python3\ -m\ pydoc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=python3complete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.py
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("input") | buffer input | else | edit input | endif
balt Py.py
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != ''
setlocal filetype=
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("output") | buffer output | else | edit output | endif
balt Py.py
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != ''
setlocal filetype=
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%!airline#statusline(3)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 117 + 118) / 236)
exe '2resize ' . ((&lines * 29 + 30) / 61)
exe 'vert 2resize ' . ((&columns * 118 + 118) / 236)
exe '3resize ' . ((&lines * 29 + 30) / 61)
exe 'vert 3resize ' . ((&columns * 118 + 118) / 236)
tabnext 1
badd +1 Py.py
badd +0 Python.py
badd +0 C++.cpp
badd +0 CPP.cpp
badd +0 output
badd +0 input
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSc
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
