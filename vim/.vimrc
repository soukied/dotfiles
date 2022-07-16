set nocompatible

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'cohama/lexima.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim'
Plug 'tomasiser/vim-code-dark'
Plug 'joshdick/onedark.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
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
set ttimeoutlen=50
set splitright splitbelow
set laststatus=2

colorscheme codedark

if has("gui_running")
	set guifont=FiraCode\ Nerd\ Font\ 12
endif

let g:airline_powerline_fonts = 1
let g:airline_theme="onedark"

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"

let &t_EI = "\<Esc>[2 q"
set bg=dark

execute "set <M-j>=\ej"
execute "set <M-h>=\eh"
execute "set <M-l>=\el"
execute "set <M-k>=\ek"

inoremap <silent> <C-J> <Esc>
xnoremap <silent> <C-J> <Esc>
vnoremap <silent> <C-J> <Esc>
cnoremap <silent> <C-J> <Esc>
nnoremap <M-h> <C-w>h
inoremap <M-j> <ESC>:echo "Hello World"<CR>
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l
