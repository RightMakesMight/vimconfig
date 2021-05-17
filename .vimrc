set nocompatible              " be iMproved, required
filetype off                  " required

" Plugin manager
call plug#begin()

" Plugins
Plug 'junegunn/vim-plug'								" Plugin manager
Plug 'puremourning/vimspector'					" Vim graphical debugger
Plug 'francoiscabrol/ranger.vim'				" Ranger in a vim window
Plug 'preservim/nerdtree'								" File Explorer
Plug 'ctrlpvim/ctrlp.vim'								" Fuzzy finder
Plug 'sonph/onehalf', { 'rtp': 'vim' }	" Pleasant theme
Plug 'tpope/vim-fugitive'								" Git wrapper




call plug#end()

" Plugin config
let NERDTreeHijackNetrw=1 " make nerdtree act as a split explorer instead of a project drawer
syntax on
set t_Co=256
set cursorline
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

" Programming:
" F6 to compile, F7 to run, F8 to debug compile, F9 to debug
autocmd FileType java nnoremap <F6> :set makeprg=javac\ %<CR>:make<CR>
autocmd FileType java nnoremap <F7> :!java %:r<CR>
autocmd FileType java nnoremap <F8> :set makeprg=javac\ -g\ %<CR>:make<CR>
autocmd FileType java nnoremap <F9> :!jdb %:r<CR>
autocmd FileType c nnoremap <F6> :set makeprg=gcc\ -Wall\ %\ -o\ %:r<CR>:make<CR>
autocmd FileType c nnoremap <F7> :!%:r <CR>
autocmd FileType c nnoremap <F8> :set makeprg=gcc\ -Wall\ -g\ %\ -o\ %:r<CR>:make<CR>
"autocmd FileType java map! <F10> :w|:! javac -g %
"autocmd FileType c map! <F10> :w|:! gcc -Wall -g % -o %:r
"autocmd FileType java map! <F11> :!%:r

" Mappings
let mapleader = ";"
nnoremap <Leader>w :w<cr>
nnoremap <Leader>ev :split $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>
inoremap jk <esc>
"inoremap <esc> <esc>l
nnoremap L $
nnoremap H ^
nnoremap  dh
"inoremap <Del> <C-O>x
autocmd FileType java nnoremap <Leader>c mzI//<Esc>'zj
autocmd FileType c nnoremap <Leader>c mzI//<Esc>'zj
autocmd FileType vim nnoremap <Leader>c mzI"<Esc>'zj

" Window and tab navidation
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-n> :tabn<CR>
nnoremap <c-m> :tabp<CR>

" Preferences
set number relativenumber
set title
syntax enable
set mouse=a
set autoindent
set shiftwidth=2
set tabstop=2
set smartindent
set bs=indent,eol,start
hi Comment ctermfg=LightBlue

"NERDTree Mappings
nnoremap ;nt :NERDTree<CR> 
nnoremap ;nm :NERDTreeMirror<CR>
nnoremap ;nc :NERDTreeClose<CR>
nnoremap ;nb :Bookmark 
nnoremap ;nbr :BookmarkToRoot 
nnoremap ;nbo :OpenBookmark 
