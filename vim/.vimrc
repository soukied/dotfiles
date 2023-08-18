set nocompatible

call plug#begin()

Plug 'nordtheme/vim', {'as':'nord'}
Plug 'dylanaraps/wal.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'sainnhe/everforest' 
Plug 'dracula/vim', {'as':'dracula'}
Plug 'voldikss/vim-floaterm'

call plug#end()

filetype plugin indent on
syntax on

set mouse=a
set nu rnu
set hidden
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set termguicolors
set encoding=utf-8
set fileencoding=utf-8
set backspace=indent,eol,start
set noswapfile 
set laststatus=2
set ttimeoutlen=50
set splitright splitbelow
set wildmenu
set guifont=Monospace\ 16
set laststatus=2 " Always show the status line
set novisualbell
set bg=dark
set cursorline

colorscheme nord

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

let mapleader = " " 
let g:airline#extensions#whitespace#enabled = 0

nnoremap <silent> <F1> <nop>

nnoremap <silent> <leader>wh <C-w>h
nnoremap <silent> <leader>wj <C-w>j
nnoremap <silent> <leader>wk <C-w>k
nnoremap <silent> <leader>wl <C-w>l

nnoremap <silent> q: <nop>

nnoremap <silent> <leader>n :bn<cr>
nnoremap <silent> <leader>p :bp<cr>

nnoremap <silent> <F2> :e .<CR>

vnoremap <silent> <Tab> >gv
vnoremap <silent> <S-Tab> <gv
vnoremap <silent> <C-c> "+y

augroup assembly_extension
	au! BufRead,BufNewFile *.asm setlocal filetype=asm
augroup END

augroup python_requirements
	au! BufRead,BufNewFile requirements.txt setlocal syntax=python
augroup END
