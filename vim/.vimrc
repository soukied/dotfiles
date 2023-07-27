call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'sainnhe/everforest'
Plug 'dracula/vim', {'as':'dracula'}
Plug 'voldikss/vim-floaterm'
call plug#end()

filetype plugin indent on
syntax on

set nu rnu
set cursorline
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
set noshowmode
set wildmenu
set guifont=Monospace\ 16
set laststatus=2 " Always show the status line
set novisualbell
set bg=dark

colorscheme everforest

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

let mapleader = " " 
let g:airline#extensions#whitespace#enabled = 0

nnoremap <silent> <leader>wh <C-w>h
nnoremap <silent> <leader>wj <C-w>j
nnoremap <silent> <leader>wk <C-w>k
nnoremap <silent> <leader>wl <C-w>l

nnoremap <silent> <leader>n :bn<cr>
nnoremap <silent> <leader>p :bp<cr>

vnoremap <silent> <Tab> >gv
vnoremap <silent> <S-Tab> <gv
