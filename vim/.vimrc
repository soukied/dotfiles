set nocompatible

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'cohama/lexima.vim'
Plug 'dracula/vim'
Plug 'itchyny/lightline.vim'
call plug#end()

filetype plugin indent on
syntax on

autocmd VimEnter * :NoMatchParen

set nu rnu
set smartindent autoindent
set tabstop=4 softtabstop=4 shiftwidth=4
set noundofile noswapfile nobackup
set backspace=indent,eol,start
set noshowmode
set ttimeoutlen=50
set splitright splitbelow
set laststatus=2

colorscheme dracula
set cursorline

if has("gui_running")
	set guifont=FiraCode\ Nerd\ Font\ 12
endif

let g:lightline = {
			\ 'colorscheme' : 'dracula',
			\ }

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
set bg=dark
