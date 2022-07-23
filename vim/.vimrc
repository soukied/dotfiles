set nocompatible

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'cohama/lexima.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim'
Plug 'tomasiser/vim-code-dark'
Plug 'joshdick/onedark.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-buftabline'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'vimsence/vimsence'
call plug#end()

filetype plugin indent on
syntax on

autocmd VimEnter * :NoMatchParen

set nu rnu
set smartindent autoindent
set tabstop=4 softtabstop=4 shiftwidth=4
set noundofile noswapfile nobackup
set backspace=indent,eol,start
set wildmenu
set noshowmode
set hidden
set ttimeoutlen=50
set splitright splitbelow
set laststatus=2

colorscheme nord

if has("gui_running")
	set guifont=FiraCode\ Nerd\ Font\ 12
endif

let mapleader = " "
let g:lightline = {
	\ 'colorscheme':'onedark',
	\ }

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"

let &t_EI = "\<Esc>[2 q"
set bg=dark

execute "set <M-j>=\ej"
execute "set <M-h>=\eh"
execute "set <M-l>=\el"
execute "set <M-k>=\ek"

inoremap <silent> <M-h> <Esc>h
inoremap <silent> <M-j> <Esc>j
inoremap <silent> <M-k> <Esc>k
inoremap <silent> <M-l> <Esc>l
nnoremap <silent> <leader>n :bn<cr>
nnoremap <silent> <leader>p :bp<cr>
nnoremap <silent> <C-T> :NERDTreeToggle<cr>
inoremap <silent> <C-J> <Esc>
xnoremap <silent> <C-J> <Esc>
vnoremap <silent> <C-J> <Esc>
cnoremap <silent> <C-J> <Esc>
inoremap <silent> <C-K> <Esc>
xnoremap <silent> <C-K> <Esc>
vnoremap <silent> <C-K> <Esc>
cnoremap <silent> <C-K> <Esc>
